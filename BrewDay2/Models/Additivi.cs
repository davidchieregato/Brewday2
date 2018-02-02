using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BrewDay.Models
{
    [Table("Additivi")]
    public class Additivi
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Additivi")]
        [Key]
        public int AdditiviId { get; set; }

        public String Nome { get; set; }
        public String Descrizione { get; set; }
        public String Produttore { get; set; }
        public Decimal Prezzo { get; set; }
        public String UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
    }
}