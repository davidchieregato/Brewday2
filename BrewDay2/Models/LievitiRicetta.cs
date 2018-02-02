using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BrewDay.Models
{
    public class LievitiRicetta
    {
        [Key, Column(Order = 0)]
        public int RicettaId { get; set; }
        [Key, Column(Order = 1)]
        public int LievitoId { get; set; }
        public virtual Ricette Ricetta { get; set; }
        public virtual Lieviti Lievito { get; set; }
        public Decimal Quantita { get; set; }
    }
}