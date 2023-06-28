using AppApartamente.ViewModel;
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
using System.Windows.Shapes;

namespace AppApartamente.AppWindow
{
    /// <summary>
    /// Interaction logic for ListaApartamenteWindow.xaml
    /// </summary>
    public partial class ListaApartamenteWindow : Window
    {
        AgentiApartamenteViewModel aVM = new AgentiApartamenteViewModel();
        public ListaApartamenteWindow()
        {
            InitializeComponent();
            DataContext = aVM;
            RefreshGrid();
        }

        private void Editare_Click(object sender, RoutedEventArgs e)
        {
            var viewModel = DataContext as AgentiApartamenteViewModel;
            if (viewModel != null && viewModel.EditCommandApart != null && viewModel.EditCommandApart.CanExecute(dgApartamente.SelectedItem))
            {
                viewModel.EditCommandApart.Execute(dgApartamente.SelectedItem);
                RefreshGrid();
            }
        }

        private void RefreshGrid()
        {
            DataContext = null;
            DataContext = aVM;
        }

        private void Stergere_Click(object sender, RoutedEventArgs e)
        {
            var viewModel = DataContext as AgentiApartamenteViewModel;
            if (viewModel != null && viewModel.DeleteCommandApart != null && viewModel.DeleteCommandApart.CanExecute(dgApartamente.SelectedItem))
            {
                viewModel.DeleteCommandApart.Execute(dgApartamente.SelectedItem);
            }
        }
    }
}
