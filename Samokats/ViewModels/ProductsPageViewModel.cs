using Microsoft.EntityFrameworkCore;
using Microsoft.VisualBasic;
using Samokats.Commands;
using Samokats.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using Unipluss.Sign.ExternalContract.Entities;
using static System.Reflection.Metadata.BlobBuilder;

namespace Samokats.ViewModels
{
    public class ProductsPageViewModel : BaseViewModel
    {
        private readonly MainWindowViewModel mainViewModel;
        public ListCollectionView Samokats { get; set; }

        public List<Manufacturer> Manufacturers { get; set; }
        public List<ProductType> ProductTypes { get; set; }

        public RelayCommand AddProductCommand { get; set; }
        public RelayCommand UpdateProductCommand { get; set; }
        public RelayCommand DeleteProductCommand { get; set; }
        public ProductsPageViewModel(MainWindowViewModel mainViewModel)
        {
            this.mainViewModel = mainViewModel;
            using (SamokatAContext context = new())
            {
                Samokats = new ListCollectionView(context.Samokats.Include(p => p.ManufacturNavigation).Include(r=>r.ProductTypeNavigation).ToList());
                Manufacturers = context.Manufacturers.ToList();
                Manufacturers.Insert(0, new Manufacturer { IdManu = 0, NameManu = "Все производители" });
                ProductTypes= context.ProductTypes.ToList();
                ProductTypes.Insert(0, new ProductType { IdType = 0, TypeName = "Все типы" });
                AddProductCommand = new RelayCommand(_ => navigateUpdateProduct(0));
                UpdateProductCommand = new RelayCommand(_ => navigateUpdateProduct(SelectedProduct?.Id ?? 0));
                DeleteProductCommand = new RelayCommand(_ => delete(SelectedProduct));
            }
        }

        private Samokat? selectedProduct;//h

        public Samokat? SelectedProduct
        {
            get => selectedProduct;

            set
            {
                setAndNotify(ref selectedProduct, value);
                notifyPropertyChanged(nameof(CanEditProduct));
            }
        }

        public bool CanEditProduct => selectedProduct is not null;


        private string searchString = string.Empty; //h

        public string SearchString
        {
            get => searchString;

            set
            {
                searchString = value;
                Samokats.Filter = p => FilterPredicate((Samokat)p);
            }
        }
        private bool FilterPredicate(Samokat product)
        {
            return product.Name.Contains(searchString, StringComparison.OrdinalIgnoreCase);
        }


        private Manufacturer selectedManufacturer;

        public Manufacturer SelectedManufacturer
        {
            get
            {
                return selectedManufacturer;
            }

            set
            {
                selectedManufacturer = value;
                Samokats.Filter = p => filterPredicate((Samokat)p);
            }
        }
        private bool filterPredicate(Samokat product)
        {
            return product.Name.Contains(searchString, StringComparison.OrdinalIgnoreCase) &&  // поиск
                (product.Manufactur == selectedManufacturer.IdManu || selectedManufacturer.IdManu == 0); // фильтрация
        }


        private ProductType selectedProductType;
        public ProductType SelectedProductType
        {
            get
            {
                return selectedProductType;
            }
            set
            {
                selectedProductType = value;
                Samokats.Filter = p => FIlterPredicate((Samokat)p);
            }
        }

        private bool FIlterPredicate(Samokat product)
        {
            return product.Name.Contains(searchString, StringComparison.OrdinalIgnoreCase) &&  // поиск
                (product.ProductType == selectedProductType.IdType || selectedProductType.IdType == 0); // фильтрация
        }

        private void navigateUpdateProduct(int samokatId)
        {
            mainViewModel.NavigateUpdatePage(samokatId);
        }


        private void delete(Samokat samokat)
        {
            using (SamokatAContext context = new())
            {
                try
                {
                    context.Samokats.Remove(samokat);
                    context.SaveChanges();
                    Samokats.Remove(samokat);
                    MessageBox.Show("Самокат удалён", "Удаление успешно",
                    MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch
                {
                    MessageBox.Show("Произошла ошибка при удалении!", "Ошибка",
                    MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
