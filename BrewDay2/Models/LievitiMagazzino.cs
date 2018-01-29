﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BrewDay.Models
{
    public class LievitiMagazzino
    {
        [Key, Column(Order = 0)]
        public int MagazzinoId { get; set; }
        [Key, Column(Order = 1)]
        public int LievitiId { get; set; }
        public virtual Magazzino Magazzino { get; set; }
        public virtual Lieviti Lievito { get; set; }
        public Decimal Quantita { get; set; }
    }
}