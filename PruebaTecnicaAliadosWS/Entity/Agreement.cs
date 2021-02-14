using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PruebaTecnicaAliadosWS.Entity
{
    public class Agreement
    {
        [Key]
        public string id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public int amount { get; set; }

    }
}
