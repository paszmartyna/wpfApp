using System;
using System.Collections.Generic;
using System.Text;

namespace WpfApplication.Models
{
    public class RepoDetail
    {
        public string Name { get;  }
        public string UserName { get;  }
        public DateTime CreationDate { get; }
        public int Watchers { get; }
    }
}
