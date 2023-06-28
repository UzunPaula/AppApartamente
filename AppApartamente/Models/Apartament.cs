using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppApartamente.Models
{
    public class Apartament
    {
        [Key]
        public int CodApartament { get; set; }
        public int Etaj { get; set; }
        public int nrCamere { get; set; }
        public double Pret { get; set; }
        public int metriPatrati { get; set; }

        [ForeignKey("CodAgent")]
        public int CodAgent { get; set; }
        public virtual Agent? Agent { get; set; }
    }
}
