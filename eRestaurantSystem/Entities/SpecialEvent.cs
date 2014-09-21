﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.ComponentModel.DataAnnotations;
#endregion
namespace eRestaurantSystem.Entities
{
    public class SpecialEvent
    {
        [Key]
        public String eventCode { get; set; }
        public String description { get; set; }
        public bool active { get; set; }

    }
}
