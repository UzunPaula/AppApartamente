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
    /// Interaction logic for ApartamentWindow.xaml
    /// </summary>
    public partial class ApartamentWindow : Window
    {
        ApartamentContext apartContext = new ApartamentContext();
        public Apartament Apartament { get; private set; }
        public ApartamentWindow(Apartament apartament)
        {
            InitializeComponent();

            Apartament = apartament;
            DataContext = apartament;
            cbxAgent.ItemsSource = apartContext.GetAgent().ToList();
            cbxAgent.Items.Refresh();
        }
        
        private void AddApartamentBtn_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }
    }
}
