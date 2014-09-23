using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Name Spaces
using System.ComponentModel.DataAnnotations;
#endregion
namespace eRestaurantSystem.Entities
{
    public class Reservation
    {
        [Key]
        public int reservationID { get; set; }
        public string customerName { get; set; }
        public DateTime reservationDate { get; set; }
        public int numberInParty { get; set; }
        public string contactPhone { get; set; }
        public string reservationStatus { get; set; }
        public string eventCode { get; set; }
    }
}
