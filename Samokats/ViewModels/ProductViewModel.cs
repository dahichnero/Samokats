using Samokats.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Samokats.ViewModels
{
    public class ProductViewModel : BaseViewModel, IDataErrorInfo
    {
        private double price;
        private string? photo;
        public string this[string columnName]
        {
            get
            {
                if (columnName == "Name" && string.IsNullOrWhiteSpace(Name))
                {
                    return "Название товара не может быть пустым!";
                }
                if (columnName == "Name" && Name.Length >= 50)
                {
                    return "Название товара не может содержать более 50 знаков!";
                }
                if (columnName == "Price" && Price < 0)
                {
                    return "Стоимость не может быть отрицательной!";
                }
                if (columnName=="MaxLoad" && MaxLoad <= 0)
                {
                    return "Грузоподъемность самоката не должна быть отрицательной";
                }
                if (columnName == "MaxLoad" && MaxLoad >200)
                {
                    return "Грузоподъемность самоката не должна превышать 200 кг";
                }
                if (columnName == "MaxSpeed" && MaxSpeed<=0)
                {
                    return "Скорость не должна быть отрицательной";
                }
                if (columnName == "MaxSpeed" && MaxSpeed > 100)
                {
                    return "Скорость не должна превышать 100 км/ч";
                }
                if (columnName == "MaxWatt" && MaxWatt > 800)
                {
                    return "Мощность не должна превышать 800 Ватт";
                }
                if (columnName == "MaxWatt" && MaxWatt <=0)
                {
                    return "Мощность не должна быть отрицательной";
                }
                if (columnName == "PowerReserve" && PowerReserve <= 0)
                {
                    return "Запас хода не должен быть отрицательным";
                }
                if (columnName == "ProductType" && ProductType == null)
                {
                    return "Выберите тип самоката!!!";
                }
                if (columnName == "Manufactur" && Manufactur == null)
                {
                    return "Выберите производителя!!!";
                }
                if (columnName == "Photo" && Photo == null)
                {
                    return "Выберите изображение!!!";
                }
                return null!;
            }
        }
        public string Error => null!;

        public ProductViewModel() { }

        public ProductViewModel(Samokat samokat)
        {
            Id = samokat.Id;
            Name = samokat.Name;
            Price = samokat.Price;
            Manufactur = samokat.ManufacturNavigation;
            ProductType = samokat.ProductTypeNavigation;
            Photo = samokat.Photo;
            MaxLoad = samokat.MaxLoad;
            MaxSpeed = samokat.MaxSpeed;
            MaxWatt = samokat.MaxWatt;
            PowerReserve = samokat.PowerReserve;
        }

        public Samokat ToProduct() => new Samokat
        {
            Id = Id,
            Name = Name,
            Price = Price,
            Photo = Photo,
            MaxLoad = MaxLoad,
            MaxSpeed = MaxSpeed,
            MaxWatt = MaxWatt,
            Manufactur = Manufactur!.IdManu,
            ProductType = ProductType!.IdType,
            PowerReserve = PowerReserve
        };

        public int Id { get; set; }

        public string Name { get; set; } = null!;

        public Manufacturer? Manufactur { get; set; }

        public ProductType? ProductType { get; set; }

        public double Price { get => price; set => setAndNotify(ref price, value); }
        public string? Photo 
        {
            get => photo;
            set
            {
                photo = value;
                notifyPropertyChanged(nameof(Photo));
            }
        }

        public int MaxLoad { get; set; }
        public int PowerReserve { get; set; }

        public double MaxSpeed { get; set; }
        public int MaxWatt { get; set; }
    }
}
