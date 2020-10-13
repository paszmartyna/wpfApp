using System;
using System.Collections.Generic;
using System.Text;

namespace WpfApplication.Models
{
    public class OrderDetail
    {
        public int Id { get; set; }

        public virtual  Order Order { get; set; }
        public int OrderId { get; set; }

        public virtual  Item Item { get; set; }
        public int ItemId { get; set; }

        public int Quantity { get; set; }

    }
}
