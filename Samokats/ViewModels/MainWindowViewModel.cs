using Samokats.Commands;
using Samokats.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using Unipluss.Sign.ExternalContract.Entities;

namespace Samokats.ViewModels
{
    public class MainWindowViewModel : BaseViewModel
    {

        private void closeProgram()
        {
            Environment.Exit(0);
        }

        public RelayCommand CloseCommand { get; set; }

        public MainWindowViewModel()
        {
            NavigateProductsPage();
            CloseCommand = new RelayCommand(_ => closeProgram());
        }
        private Page currentPage = null!;
        public Page CurrentPage
        {
            get => currentPage;
            set => setAndNotify(ref currentPage, value);
        }
        public void NavigateProductsPage()
        {
            CurrentPage = new ProductsListPage(this);
        }
        public void NavigateUpdatePage(int samokatId)
        {
            CurrentPage = new UpdateProductPage(this, samokatId);
        }
    }
}
