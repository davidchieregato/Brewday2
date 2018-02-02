using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BrewDay2.Models
{
    public class AdditiviRicetta
    {
        [Key, Column(Order = 0)]
        public int RicettaId { get; set; }

        [Key, Column(Order = 1)]
        [Display(Name = "Additivo")]
        public int AdditiviId { get; set; }

        public virtual Ricette Ricetta { get; set; }
        public virtual Additivi Additivo { get; set; }
        public Decimal Quantita { get; set; }
    }
}