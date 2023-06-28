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
    /// Interaction logic for AgentWindow.xaml
    /// </summary>
    public partial class AgentWindow : Window
    {
        public Agent Agent { get; private set; }
        public AgentWindow(Agent agent)
        {
            InitializeComponent();

            Agent = agent;
            DataContext = Agent;
        }

        private void btnAddAgent_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }
    }
}
