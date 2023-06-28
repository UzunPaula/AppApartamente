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
    /// Interaction logic for ListaAgentiVarstaTelefon.xaml
    /// </summary>
    public partial class ListaAgentiVarstaTelefon : Window
    {
        ApartamentContext apartContext = new ApartamentContext();
        public ListaAgentiVarstaTelefon()
        {
            InitializeComponent();
            dgListaAgentiVarstaTelefon.ItemsSource = apartContext.GetAgentVarsta20To30CuTelefon();
            dgListaAgentiVarstaTelefon.Items.Refresh();
        }
    }
}
