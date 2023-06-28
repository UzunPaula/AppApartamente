using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppApartamente.Models
{
    public class ApartamentContext:DbContext
    {
        public DbSet<Agent> Agenti { get; set; }
        public DbSet<Apartament> Apartamente { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite("Data Source = apartament.db");
            base.OnConfiguring(optionsBuilder);
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Agent>()
                .HasKey(c => c.CodAgent);
            modelBuilder.Entity<Apartament>()
                .HasKey(c => c.CodApartament);
            modelBuilder.Entity<Apartament>()
                .HasOne(c => c.Agent)
                .WithMany()
                .HasForeignKey(c => c.CodAgent);
        }
        public ObservableCollection<Agent> GetAgent()
        {
            var agent = Agenti.ToList();
            var agentiObservable = new ObservableCollection<Agent>(agent);
            return agentiObservable;
        }

        public void AdaugaAgent(Agent agent)
        {
            Agenti.Add(agent);
            SaveChanges();
        }
        public void ActualizeazaAgent(Agent agent)
        {
            //Carti.Update(carte);
            Agenti.Entry(agent).State = EntityState.Modified;
            SaveChanges();
        }
        public void StergeAgent(Agent agent)
        {
            Agenti.Remove(agent);
            SaveChanges();
        }

        public ObservableCollection<Apartament> GetApartamente()
        {
            var apartamente = Apartamente.ToList();
            var apartamenteObservable = new ObservableCollection<Apartament>(apartamente);
            return apartamenteObservable;
        }

        public void AdaugaApartament(Apartament apartament)
        {
            Apartamente.Add(apartament);
            SaveChanges();
        }
        public void ActualizeazaApartament(Apartament apartament)
        {
            Apartamente.Entry(apartament).State = EntityState.Modified;
            SaveChanges();
        }

        public void StergeApartament(Apartament apartament)
        {
            Apartamente.Remove(apartament);
            SaveChanges();
        }

        public List<Apartament> GetApartPatruCamere()
        {
            List<Apartament> apartamentePatruCamere = (from apartament in Apartamente
                                                       where apartament.nrCamere == 4 && (apartament.Etaj == 2 || apartament.Etaj == 3)
                                                       select apartament).ToList();
            return apartamentePatruCamere;
        }

        public List<Agent> GetAgentVarsta20To30CuTelefon()
        {
            List<Agent> agentVasta20To30WithPhone = (from agent in Agenti
                                                     where agent.Telefon != null && (agent.Varsta >= 20 && agent.Varsta <= 30)
                                                     select agent).ToList();
            return agentVasta20To30WithPhone;
        }

        public List<AgentTotalVanzari> GetAgentSumaTotalVanzari()
        {
            List<AgentTotalVanzari> agentSumaTotalVanzari = (from agent in Apartamente
                                                             group agent by agent.Agent into ag
                                                             select new AgentTotalVanzari { Agent = ag.Key, SumaTotalVanzari = (int)ag.Sum(a => a.Pret) }).ToList();
            return agentSumaTotalVanzari;
        }
    }
}
