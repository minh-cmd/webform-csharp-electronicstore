namespace btlwebcoban
{
    public class Product
    {

        public int ProductID { get; set; }
        public string ProductName { get; set; }

        public string ProductKind { get; set; }
        public string ProductDescription { get; set; }
        public decimal ProductPrice { get; set; }
        public string ImageUrl { get; set; }

        public Product()
        {
        }

        public Product(int productID, string productName, string productKind, decimal productPrice, string productDescription, string imageUrl)
        {
            this.ProductID = productID;
            this.ProductName = productName;
            this.ProductKind = productKind;
            this.ProductPrice = productPrice;
            this.ProductDescription = productDescription;
            this.ImageUrl = imageUrl;
        }
    }

}
