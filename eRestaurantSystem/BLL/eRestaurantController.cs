using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Name Spaces
using eRestaurantSystem.Entities;
using eRestaurantSystem.DAL;
using System.ComponentModel;
#endregion Name Spaces 
namespace eRestaurantSystem.BLL
{
    [DataObject]
    public class eRestaurantController
    {
        public List<SpecialEvent> SpecialEvent_List()
        {
            using (eRestaurantContext SpecialEventcontext = new eRestaurantContext())
            {
                return SpecialEventcontext.SpecialEvents.ToList();
            }
        }

        public List<Reservation> ReservationList()
        {
            using (eRestaurantContext ReservationContext = new eRestaurantContext())
            {
                return ReservationContext.Reservations.ToList();
            }
        }
    }
}
