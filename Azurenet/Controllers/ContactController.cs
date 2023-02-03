using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using Azurenet.Models;

namespace Azurenet.Controllers
{    
    [Route("api/[controller]")]
    [ApiController] 
    public class ContactController : Controller
    {
      private ContactsContex contactsContex;
      public ContactController (ContactsContex contex)
      {
        contactsContex = contex;
      }  
    [HttpGet]
     public ActionResult<IEnumerable<Contacts>> Get()
    {
        return contactsContex.ContactSet.ToList();
    }
    ~ContactController()
    {
        contactsContex.Dispose();
    }
    }
}