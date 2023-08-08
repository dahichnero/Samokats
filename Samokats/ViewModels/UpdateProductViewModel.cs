using Microsoft.EntityFrameworkCore;
using Microsoft.Win32;
using Samokats.Commands;
using Samokats.Models;
using Samokats.Views;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Samokats.ViewModels
{
    public class UpdateProductViewModel :BaseViewModel
    {
        private readonly MainWindowViewModel mainWindowViewModel;
        public ProductViewModel Samokat { get; set; }
        public List<Manufacturer> ManufacturerList { get; set; }
        public List<ProductType> Types { get; set; }
        public RelayCommand SaveCommand { get; set; }
        public RelayCommand BackCommand { get; set; }
        public RelayCommand ImageCommand { get; set; }
        public UpdateProductViewModel(MainWindowViewModel mainWindowViewModel, int productId)
        {
            this.mainWindowViewModel = mainWindowViewModel;
            using (SamokatAContext context = new())
            {
                var found=context.Samokats
                    .Include(p=>p.ManufacturNavigation)
                    .Include(p=>p.ProductTypeNavigation)
                    .FirstOrDefault(p=>p.Id==productId);
                if (found is null)
                {
                    Samokat = new ProductViewModel();
                }
                else
                {
                    Samokat=new ProductViewModel(found);
                }
                Types = context.ProductTypes.ToList();
                ManufacturerList = context.Manufacturers.ToList();
                SaveCommand = new RelayCommand(_ => saveChanges());
                BackCommand = new RelayCommand(_ => navigateProductList());
                ImageCommand = new RelayCommand(_ => image());
            }
        }
        private void navigateProductList()
        {
            mainWindowViewModel.NavigateProductsPage();
        }
        private void saveChanges()
        {
            Samokat samokat=Samokat.ToProduct();
            using (SamokatAContext context = new())
            {
                if (samokat.Id == 0)
                {
                    context.Samokats.Add(samokat);
                }
                else
                {
                    context.Samokats.Update(samokat);
                }
                try
                {
                    context.SaveChanges();
                    navigateProductList();
                }
                catch
                {
                    MessageBox.Show("Ошибка","Error!");
                }
            }
            
        }
        private void image()
        {
            var dialog = new OpenFileDialog
            {
                Filter = "Png Images|*.png"
            };

            var result = dialog.ShowDialog();
            if (result != true)
            {
                return;
            }

            string newFilename = Guid.NewGuid().ToString().Replace("-", "") + ".png";
            string pathToCopy = $"Images/{newFilename}";

            try
            {
                File.Copy(dialog.FileName, pathToCopy);
                Samokat.Photo = newFilename;
            }
            catch
            {
                MessageBox.Show("Ошибка при копировании файла!");
            }
        }
    }
}
