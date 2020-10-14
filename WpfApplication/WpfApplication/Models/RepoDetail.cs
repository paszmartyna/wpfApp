using System;
using System.Collections.Generic;
using System.Text;

namespace WpfApplication.Models
{
    class RepoDetail
    {
        public string Name { get; set; }
        public Owner Owner { get; set; }
        public string Description { get; set; }
        public int Watchers_count { get; set; }

        public DateTime Updated_at { get; set; }
    }

    class Owner
    {
        public string Login { get; set; }
        public string Url { get; set; }
        public string Type { get; set; }
    }
}
