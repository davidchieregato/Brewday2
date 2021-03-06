﻿using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BrewDay2.Models
{
    [Table("Lieviti")]
    public class Lieviti
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        [Display(Name = "Lieviti")]
        public int LievitiId { get; set; }

        public String Nome { get; set; }
        public String Descrizione { get; set; }
        public String Produttore { get; set; }
        public Decimal Prezzo { get; set; }
        public String UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
    }
}