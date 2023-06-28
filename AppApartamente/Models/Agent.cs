using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppApartamente.Models
{
    public class Agent
    {
        [Key]
        public int CodAgent { get; set; }
        public string? Nume { get; set; }
        public string? Prenume { get; set; }
        public int Varsta { get; set; }
        public string? Telefon { get; set; }
    }
}
