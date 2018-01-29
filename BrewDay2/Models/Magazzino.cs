using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BrewDay2.Models
{
    public class Magazzino
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int MagazzinoId { get; set; }
        public String UserId { get; set; }
        public virtual ApplicationUser User { get; set; }
        public virtual ICollection<AdditiviMagazzino> AdditiviUtente { get; set; }
        public virtual ICollection<LievitiMagazzino> LievitiUtente { get; set; }
        public virtual ICollection<LuppoliMagazzino> LuppoliUtente { get; set; }
        public virtual ICollection<MaltiMagazzino> MaltiUtente { get; set; }
        public virtual ICollection<ZuccheriMagazzino> ZuccheriUtente { get; set; }
    }
}