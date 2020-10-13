﻿using System;
using System.Collections.Generic;
using System.Text;

namespace WpfApplication.Models
{
    public class Client
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Order> Orders { get; set; }


    }
}
