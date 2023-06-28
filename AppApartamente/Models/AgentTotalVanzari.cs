using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppApartamente.Models
{
    public class AgentTotalVanzari
    {
        [Key]
        public Agent? Agent { get; set; }
        public int SumaTotalVanzari { get; set; }
    }
}
