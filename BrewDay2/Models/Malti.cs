using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BrewDay2.Models
{
    [Table("Malti")]
    public class Malti
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int MaltiId { get; set; }
        public String Nome { get; set; }
        public String Produttore { get; set; }
        public String Descrizione { get; set; }
        public Decimal Prezzo { get; set; }
        public String UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
    }
}