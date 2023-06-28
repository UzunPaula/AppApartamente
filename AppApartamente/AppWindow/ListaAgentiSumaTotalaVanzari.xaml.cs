using AppApartamente.Models;
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
    /// Interaction logic for ListaAgentiSumaTotalaVanzari.xaml
    /// </summary>
    public partial class ListaAgentiSumaTotalaVanzari : Window
    {
        ApartamentContext apartContext = new ApartamentContext();
        public ListaAgentiSumaTotalaVanzari()
        {
            InitializeComponent();
            dgListaAgentiSumaVanzari.ItemsSource = apartContext.GetAgentSumaTotalVanzari();
            dgListaAgentiSumaVanzari.Items.Refresh();
        }
    }
}
