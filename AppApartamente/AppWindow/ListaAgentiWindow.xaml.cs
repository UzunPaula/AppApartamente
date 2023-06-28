using AppApartamente.Models;
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
    /// Interaction logic for ListaAgentiWindow.xaml
    /// </summary>
    public partial class ListaAgentiWindow : Window
    {
        AgentiApartamenteViewModel vm = new AgentiApartamenteViewModel();
        public ListaAgentiWindow()
        {
            InitializeComponent();
            DataContext = vm;
            RefreshGrid();
        }

        private void Editare_Click(object sender, RoutedEventArgs e)
        {
            var viewModel = DataContext as AgentiApartamenteViewModel;
            if (viewModel != null && viewModel.EditCommandAgents != null && viewModel.EditCommandAgents.CanExecute(dgAgenti.SelectedItem))
            {
                viewModel.EditCommandAgents.Execute(dgAgenti.SelectedItem);
                RefreshGrid();
            }
        }

        private void RefreshGrid()
        {
            DataContext = null;
            DataContext = vm;
        }

        private void Sterge_Click(object sender, RoutedEventArgs e)
        {
            var viewModel = DataContext as AgentiApartamenteViewModel;
            if (viewModel != null && viewModel.DeleteCommandAgents != null && viewModel.DeleteCommandAgents.CanExecute(dgAgenti.SelectedItem))
            {
                viewModel.DeleteCommandAgents.Execute(dgAgenti.SelectedItem);
            }
        }
    }
}
