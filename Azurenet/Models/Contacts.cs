using System.ComponentModel.DataAnnotations;
namespace Azurenet.Models
{
    public class Contacts
    {
        [Key]
        public string Identicador { get; set; }
        public string Nombre { get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
    }
} 