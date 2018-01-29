using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BrewDay2.Models
{
    public class Ricette
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int RicettaId { get; set; }
        public String Note { get; set; }
        public String NomeRicetta { get; set; }
        public String TempoPreparazione { get; set; }
        public String TempoFermentazione { get; set; }
        public String Categoria { get; set; }
        public String ImmagineScelta { get; set; }
        public bool Privata { get; set; } = false;
        public virtual ICollection<Malti> Maltis { get; set; }
        public virtual ICollection<Additivi> Additivis { get; set; }
        public virtual ICollection<Lieviti> Lievitis { get; set; }
        public virtual ICollection<Luppoli> Luppolis { get; set; }
        public virtual ICollection<Zuccheri> Zuccheris { get; set; }

    }
}