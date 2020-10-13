using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;

namespace WpfApplication.Models
{
    public class Order
    {
        public int Id { get; set; }
        public virtual Client Client { get; set; }
        public int ClientId { get; set; }

        public DateTime OrderDate { get; set; }
        public string OrderName { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }=        new ObservableCollection<OrderDetail>();


        public decimal NetValue
        {
            get
            {
                return OrderDetails.Sum(x => x.Quantity * x.Item.UnitNetPrice);
            }
        }
        public decimal GrossValue
        {
            get
            {
                return OrderDetails.Sum(x => x.Quantity * (1 + x.Item.TaxRate) * x.Item.UnitNetPrice);
            }
        }
    }
}
