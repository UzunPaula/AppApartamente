using AppApartamente.AppWindow;
using AppApartamente.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace AppApartamente.ViewModel
{
    public class AgentiApartamenteViewModel
    {
        ApartamentContext db = new ApartamentContext();
        RelayCommand? addCommandAgent;
        RelayCommand? editCommandAgent;
        RelayCommand? deleteCommandAgent;
        RelayCommand? showAgent;

        RelayCommand? addCommandApart;
        RelayCommand? editCommandApart;
        RelayCommand? deleteCommandApart;
        RelayCommand? showAparts;

        RelayCommand? showApartamenteFourRooms;
        RelayCommand? showAgentiPhoneAge;
        RelayCommand? showAgentiSumaVanzari;

        public ObservableCollection<Agent>? Agenti { get; set; }
        public ObservableCollection<Apartament>? Apartamente { get; set; }

        public AgentiApartamenteViewModel()
        {
            db.Database.EnsureCreated();

            db.Agenti.Load();
            Agenti = db.Agenti.Local.ToObservableCollection();

            db.Apartamente.Load();
            Apartamente = db.Apartamente.Local.ToObservableCollection();
        }

        public RelayCommand AddCommandAgent
        {
            get
            {
                return addCommandAgent ?? (addCommandAgent = new RelayCommand((o) =>
                {
                    AgentWindow agentWindow = new AgentWindow(new Agent());
                    if (agentWindow.ShowDialog() == true)
                    {
                        Agent agent = agentWindow.Agent;
                        db.AdaugaAgent(agent);
                    }
                }));
            }
        }

        public RelayCommand ShowAgents
        {
            get
            {
                return showAgent ?? (showAgent = new RelayCommand((ag) =>
                {
                    ListaAgentiWindow listaAgentiWindow = new ListaAgentiWindow();
                    listaAgentiWindow.ShowDialog();
                }));
            }
        }

        public RelayCommand EditCommandAgents
        {
            get
            {
                return editCommandAgent ??
                    (editCommandAgent = new RelayCommand((selectedItem) =>
                    {
                        //obtinem obiectul selectat

                        Agent? agent = selectedItem as Agent;
                        if (agent == null)
                        {
                            return;
                        }
                        Agent vm = new Agent
                        {
                            CodAgent = agent.CodAgent,
                            Nume = agent.Nume,
                            Prenume = agent.Prenume,
                            Varsta = agent.Varsta,
                            Telefon = agent.Telefon,
                        };
                        AgentWindow agentWindow = new AgentWindow(vm);
                        Button editButton = agentWindow.btnAddAgent;
                        editButton.Content = "Editeaza agentul";

                        if (agentWindow.ShowDialog() == true)
                        {
                            agent.Nume = agentWindow.Agent.Nume;
                            agent.Prenume = agentWindow.Agent.Prenume;
                            agent.Varsta = agentWindow.Agent.Varsta;
                            agent.Telefon = agentWindow.Agent.Telefon;
                            db.ActualizeazaAgent(agent);
                        }
                    }));
            }
        }

        public RelayCommand DeleteCommandAgents
        {
            get
            {
                return deleteCommandAgent ??
                    (deleteCommandAgent = new RelayCommand((selectedItem) =>
                    {
                        Agent? agent = selectedItem as Agent;
                        if (agent == null) { return; }
                        db.StergeAgent(agent);
                    }));
            }
        }

        public RelayCommand AddCommandApart
        {
            get
            {
                return addCommandApart ?? (addCommandApart = new RelayCommand((c) =>
                {
                    ApartamentWindow apartamentWindow = new ApartamentWindow(new Apartament());
                    if (apartamentWindow.ShowDialog() == true)
                    {
                        Apartament apartament = apartamentWindow.Apartament;
                        apartament.CodAgent = ((Agent)apartamentWindow.cbxAgent.SelectedItem).CodAgent;
                        db.AdaugaApartament(apartament);
                    }
                }));
            }
        }

        public RelayCommand ShowAparts
        {
            get
            {
                return showAparts ?? (showAparts = new RelayCommand((ap) =>
                {
                    ListaApartamenteWindow listaApartamenteWindow = new ListaApartamenteWindow();
                    listaApartamenteWindow.ShowDialog();
                }));
            }
        }

        public RelayCommand EditCommandApart
        {
            get
            {
                return editCommandApart ?? (editCommandApart = new RelayCommand((selectedItem) =>
                {
                    Apartament? apartament = selectedItem as Apartament;
                    if (apartament == null)
                    {
                        return;
                    }
                    Apartament apart = new Apartament
                    {
                        CodApartament = apartament.CodApartament,
                        Etaj = apartament.Etaj,
                        nrCamere = apartament.nrCamere,
                        Pret = apartament.Pret,
                        metriPatrati = apartament.metriPatrati,
                        CodAgent = apartament.CodAgent

                    };
                    ApartamentWindow apartWindow = new ApartamentWindow(apart);
                    Button editButton = apartWindow.btnAddApartament;
                    editButton.Content = "Editeaza apartamentul";

                    if (apartWindow.ShowDialog() == true)
                    {
                        apartament.Etaj = apartWindow.Apartament.Etaj;
                        apartament.nrCamere = apartWindow.Apartament.nrCamere;
                        apartament.Pret = apartWindow.Apartament.Pret;
                        apartament.metriPatrati = apartWindow.Apartament.metriPatrati;
                        apartament.CodAgent = apartWindow.Apartament.CodAgent;
                        db.ActualizeazaApartament(apartament);
                    }
                }));
            }
        }

        public RelayCommand DeleteCommandApart
        {
            get
            {
                return deleteCommandApart ?? (deleteCommandApart = new RelayCommand((selectedItemDel) =>
                {
                    Apartament? apartament = selectedItemDel as Apartament;
                    if (apartament == null)
                    {
                        return;
                    }
                    db.StergeApartament(apartament);
                }));
            }
        }

        public RelayCommand ShowApartamenteFourRooms
        {
            get
            {
                return showApartamenteFourRooms ?? (showApartamenteFourRooms = new RelayCommand((show) =>
                {
                    ListaApartPatruCamere listaApartPatruCamere = new ListaApartPatruCamere();
                    listaApartPatruCamere.dgListaApartPatruCamere.ItemsSource = db.GetApartPatruCamere();
                    listaApartPatruCamere.ShowDialog();
                }));
            }
        }

        public RelayCommand ShowAgentiPhoneAge
        {
            get
            {
                return showAgentiPhoneAge ?? (showAgentiPhoneAge = new RelayCommand((show) =>
                {
                    ListaAgentiVarstaTelefon listaAgentiVarstaTelefon = new ListaAgentiVarstaTelefon();
                    listaAgentiVarstaTelefon.dgListaAgentiVarstaTelefon.ItemsSource = db.GetAgentVarsta20To30CuTelefon();
                    listaAgentiVarstaTelefon.ShowDialog();
                }));
            }
        }

        public RelayCommand ShowAgentiSumaVanzari
        {
            get
            {
                return showAgentiSumaVanzari ?? (showAgentiSumaVanzari = new RelayCommand((show) =>
                {
                    ListaAgentiSumaTotalaVanzari listaAgentiSumaTotalaVanzari = new ListaAgentiSumaTotalaVanzari();
                    listaAgentiSumaTotalaVanzari.dgListaAgentiSumaVanzari.ItemsSource = db.GetAgentSumaTotalVanzari();
                    listaAgentiSumaTotalaVanzari.ShowDialog();
                }));
            }
        }
    }
}