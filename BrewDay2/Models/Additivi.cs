using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BrewDay2.Models
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
        [DataType(DataType.Currency)]
        public Decimal Prezzo { get; set; }
        public String UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
    }
}