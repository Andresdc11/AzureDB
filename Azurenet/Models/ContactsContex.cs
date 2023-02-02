using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace Azurenet.Models
{
    public class ContactsContex : DbContext
    {
        public ContactsContex (DbContextOptions options) :base(options)        
        {
            
        }

        public DbSet<Contacts> ContactSet{get;set;}
    }
}