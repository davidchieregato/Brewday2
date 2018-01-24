using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BrewDay.Models
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
    }
}