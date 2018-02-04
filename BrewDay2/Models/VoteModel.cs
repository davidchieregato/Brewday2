using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BrewDay2.Models
{
    [Table("VoteModel")]
    public class VoteModel
    {
        [Key]
        public int AutoId { get; set; }
        public int SectionId { get; set; }
        public int VoteForId { get; set; }
        public String UserName { get; set; }
        public int Vote { get; set; }
        public bool Active { get; set; }
    }
}