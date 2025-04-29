using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace btlwebcoban.Models
{
    public class CartItem
    {
        public Product CartProduct { get; set; }
        public int ProductQuantity { get; set; }
    }
}