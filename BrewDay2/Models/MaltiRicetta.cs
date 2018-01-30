using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BrewDay2.Models
{
    public class MaltiRicetta
    {
        [Key, Column(Order = 0)]
        public int RicettaId { get; set; }
        [Key, Column(Order = 1)]
        public int MaltiId { get; set; }
        public virtual Ricette Ricetta { get; set; }
        public virtual Malti Malto { get; set; }
        public Decimal Quantita { get; set; }
    }
}