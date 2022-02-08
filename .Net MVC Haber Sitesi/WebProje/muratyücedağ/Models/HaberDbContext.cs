using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace muratyücedağ.Models
{
    public class HaberDbContext:DbContext
    {
        public HaberDbContext(DbContextOptions<HaberDbContext> options)
            : base(options) { }
    }

}