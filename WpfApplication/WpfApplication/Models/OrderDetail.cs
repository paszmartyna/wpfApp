using System;
using System.Collections.Generic;
using System.Text;

namespace WpfApplication.Models
{
    public class OrderDetail
    {
        public int Id { get; set; }

        public virtual Order Order { get; set; }
        public int OrderId { get; set; }

        public virtual Item Item { get; set; }
        public int ItemId { get; set; }

        public int Quantity { get; set; }

        public decimal NetValue
        {
            get
            {
                return Item!=null? (Quantity * Item.UnitNetPrice): 0;
            }
        }
        public decimal GrossValue
        {
            get
            {
                return Item != null ? Quantity * (1 + Item.TaxRate) * Item.UnitNetPrice: 0;
            }
        }

    }
}
