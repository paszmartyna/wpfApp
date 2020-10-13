using System;
using System.Collections.Generic;
using System.Text;

namespace WpfApplication.Models
{
    public class Item
    {
        public int Id { get; set; }
        public string ItemName { get; set; }
        public decimal UnitNetPrice { get; set; }
        public decimal TaxRate { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }

    }
}
