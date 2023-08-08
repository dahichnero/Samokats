﻿using Samokats.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Samokats.Views
{
    /// <summary>
    /// Логика взаимодействия для UpdateProductPage.xaml
    /// </summary>
    public partial class UpdateProductPage : Page
    {
        public UpdateProductPage(MainWindowViewModel mainWindowViewModel, int samokatId)
        {
            InitializeComponent();
            DataContext = new UpdateProductViewModel(mainWindowViewModel, samokatId);
        }
    }
}
