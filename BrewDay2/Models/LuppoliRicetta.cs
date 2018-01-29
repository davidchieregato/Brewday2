using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BrewDay2.Models
{
    public class LuppoliRicetta
    {
        [Key, Column(Order = 0)]
        public int RicettaId { get; set; }
        [Key, Column(Order = 1)]
        public int LuppoliId { get; set; }
        public virtual Ricette Ricetta { get; set; }
        public virtual Luppoli Luppolo { get; set; }
        public Decimal Quantita { get; set; }
    }
}