using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BrewDay2.Models
{
    public class LuppoliMagazzino
    {
        [Key, Column(Order = 0)]
        public int MagazzinoId { get; set; }
        [Key, Column(Order = 1)]
        public int LuppoliId { get; set; }
        public virtual Magazzino Magazzino { get; set; }
        public virtual Luppoli Luppolo { get; set; }
        public Decimal Quantita { get; set; }
    }

}