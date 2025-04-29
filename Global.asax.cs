using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.Security;
using System.Web.SessionState;

namespace btlwebcoban
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<Product> products = new List<Product>();
            List<Product> homeproduct = new List<Product>();
            homeproduct.Add(new Product(1, "Toshiba X203", "maygiat", 20.0m, "Affordable washing machine with basic features", "../picture/maygiat/Toshiba_X203.jfif"));
            homeproduct.Add(new Product(2, "Samsung EcoWash 500", "maygiat", 25.5m, "Energy-efficient washer with eco mode", "../picture/maygiat/Samsung_EcoWash_500.jfif"));
            homeproduct.Add(new Product(31, "Dell XPS 13", "laptop", 80.0m, "Lightweight with powerful performance", "../picture/laptop/Dell_XPS_13.jfif"));
            homeproduct.Add(new Product(33, "HP Spectre x360", "laptop", 85.0m, "Convertible laptop with touchscreen", "../picture/laptop/HP_Spectre_x360.jpg"));
            homeproduct.Add(new Product(21, "Samsung TwinCool 300L", "tulanh", 50.0m, "Dual cooling for freshness", "../picture/tulanh/Samsung_TwinCool_300L.png"));
            homeproduct.Add(new Product(22, "LG InstaView 500L", "tulanh", 75.0m, "Knock-to-see door with large capacity", "../picture/tulanh/LG_InstaView_500L.jpg"));
            homeproduct.Add(new Product(23, "Panasonic EcoFrost 250L", "tulanh", 40.0m, "Energy-saving fridge for small families", "../picture/tulanh/Panasonic_EcoFrost_250L.jpg"));
            homeproduct.Add(new Product(11, "Sony Bravia 55X", "television", 45.0m, "4K UHD smart TV with HDR", "../picture/television/Sony_Bravia_55X.jfif"));

            Application["HomeProducts"] = homeproduct;

            // Kind 1: Washing Machines (maygiat)
            products.Add(new Product(1, "Toshiba X203", "maygiat", 20.0m, "Affordable washing machine with basic features", "../picture/maygiat/Toshiba_X203.jfif"));
            products.Add(new Product(2, "Samsung EcoWash 500", "maygiat", 25.5m, "Energy-efficient washer with eco mode", "../picture/maygiat/Samsung_EcoWash_500.jfif"));
            products.Add(new Product(3, "LG TurboClean 300", "maygiat", 30.0m, "High-speed washing with turbo technology", "../picture/maygiat/LG_TurboClean_300.jfif"));
            products.Add(new Product(4, "Panasonic FreshWash X1", "maygiat", 22.8m, "Compact washer for small households", "../picture/maygiat/Panasonic_FreshWash_X1.jpg"));
            products.Add(new Product(5, "Electrolux PowerClean", "maygiat", 35.0m, "Powerful stain removal technology", "../picture/maygiat/Electrolux_PowerClean.jpg"));
            products.Add(new Product(6, "Haier SmartWash 7", "maygiat", 28.0m, "Smart washing with app control", "../picture/maygiat/Haier_SmartWash_7.jfif"));
            products.Add(new Product(7, "Whirlpool UltraWash", "maygiat", 32.5m, "Large capacity for family use", "../picture/maygiat/Whirlpool_UltraWash.jpeg"));
            products.Add(new Product(8, "Bosch EcoSeries 400", "maygiat", 27.0m, "Silent operation with eco-friendly design", "../picture/maygiat/Bosch_EcoSeries_400.jpg"));
            products.Add(new Product(9, "Sharp QuickWash 200", "maygiat", 19.5m, "Fast washing for small loads", "../picture/maygiat/Sharp_QuickWash_200.jpg"));
            products.Add(new Product(10, "Midea TwinTub X5", "maygiat", 18.0m, "Dual-tub washer for budget buyers", "../picture/maygiat/Midea_TwinTub_X5.png"));

            // Kind 2: Televisions (television)
            products.Add(new Product(11, "Sony Bravia 55X", "television", 45.0m, "4K UHD smart TV with HDR", "../picture/television/Sony_Bravia_55X.jfif"));
            products.Add(new Product(12, "Samsung QLED 65Q", "television", 60.0m, "Quantum Dot technology for vibrant colors", "../picture/television/Samsung_QLED_65Q.png"));
            products.Add(new Product(13, "LG OLED C3", "television", 70.0m, "Perfect blacks with OLED display", "../picture/television/LG_OLED_C3.jpeg"));
            products.Add(new Product(14, "TCL 43S Smart", "television", 25.0m, "Affordable 43-inch smart TV", "../picture/television/TCL_43S_Smart.png"));
            products.Add(new Product(15, "Panasonic Viera 50P", "television", 38.0m, "Full HD LED with sleek design", "../picture/television/Panasonic_Viera_50P.png"));
            products.Add(new Product(16, "Philips Ambilight 60", "television", 55.0m, "Ambient lighting for immersive viewing", "../picture/television/Philips_Ambilight_60.jfif"));
            products.Add(new Product(17, "Sharp Aquos 70X", "television", 65.0m, "Large-screen 4K with sharp details", "../picture/television/Sharp_Aquos_70X.jfif"));
            products.Add(new Product(18, "Hisense U8G 55", "television", 48.0m, "ULED technology for enhanced visuals", "../picture/television/Hisense_U8G_55.png"));
            products.Add(new Product(19, "Vizio M-Series 50", "television", 40.0m, "Dolby Vision support at mid-range price", "../picture/television/Vizio_M-Series_50.jpg"));
            products.Add(new Product(20, "Toshiba Fire TV 32", "television", 20.0m, "Compact smart TV with Alexa", "../picture/television/Toshiba_Fire_TV_32.png"));

            // Kind 3: Refrigerators (tulanh)
            products.Add(new Product(21, "Samsung TwinCool 300L", "tulanh", 50.0m, "Dual cooling for freshness", "../picture/tulanh/Samsung_TwinCool_300L.png"));
            products.Add(new Product(22, "LG InstaView 500L", "tulanh", 75.0m, "Knock-to-see door with large capacity", "../picture/tulanh/LG_InstaView_500L.jpg"));
            products.Add(new Product(23, "Panasonic EcoFrost 250L", "tulanh", 40.0m, "Energy-saving fridge for small families", "../picture/tulanh/Panasonic_EcoFrost_250L.jpg"));
            products.Add(new Product(24, "Toshiba MultiDoor 600L", "tulanh", 85.0m, "Spacious multi-door refrigerator", "../picture/tulanh/Toshiba_MultiDoor_600L.jpg"));
            products.Add(new Product(25, "Electrolux FreshZone 400L", "tulanh", 60.0m, "Keeps food fresh longer", "../picture/tulanh/Electrolux_FreshZone_400L.jpeg"));
            products.Add(new Product(26, "Haier CoolTech 350L", "tulanh", 55.0m, "Advanced cooling technology", "../picture/tulanh/Haier_CoolTech_350L.png"));
            products.Add(new Product(27, "Whirlpool SideBySide 700L", "tulanh", 90.0m, "Large side-by-side fridge", "../picture/tulanh/Whirlpool_SideBySide_700L.png"));
            products.Add(new Product(28, "Bosch VitaFresh 450L", "tulanh", 70.0m, "Vitamin-preserving cooling", "../picture/tulanh/Bosch_VitaFresh_450L.jpg"));
            products.Add(new Product(29, "Sharp SlimFrost 200L", "tulanh", 35.0m, "Slim design for tight spaces", "../picture/tulanh/Sharp_SlimFrost_200L.jpg"));
            products.Add(new Product(30, "Midea MiniFridge 150L", "tulanh", 25.0m, "Compact fridge for dorms", "../picture/tulanh/Midea_MiniFridge_150L.jpeg"));

            // Kind 4: Laptops (laptop)
            products.Add(new Product(31, "Dell XPS 13", "laptop", 80.0m, "Lightweight with powerful performance", "../picture/laptop/Dell_XPS_13.jfif"));
            products.Add(new Product(32, "MacBook Air M2", "laptop", 100.0m, "Apple's latest lightweight laptop", "../picture/laptop/MacBook_Air_M2.jpeg"));
            products.Add(new Product(33, "HP Spectre x360", "laptop", 85.0m, "Convertible laptop with touchscreen", "../picture/laptop/HP_Spectre_x360.jpg"));
            products.Add(new Product(34, "Lenovo ThinkPad X1", "laptop", 90.0m, "Durable business-class laptop", "../picture/laptop/Lenovo_ThinkPad_X1.jpg"));
            products.Add(new Product(35, "Asus ZenBook 14", "laptop", 70.0m, "Sleek design with long battery life", "../picture/laptop/Asus_ZenBook_14.png"));
            products.Add(new Product(36, "Acer Predator Helios", "laptop", 95.0m, "Gaming laptop with high-end GPU", "../picture/laptop/Acer_Predator_Helios.jpg"));
            products.Add(new Product(37, "MSI Stealth 15M", "laptop", 88.0m, "Slim gaming laptop with power", "../picture/laptop/MSI_Stealth_15M.jpg"));
            products.Add(new Product(38, "Surface Laptop 5", "laptop", 92.0m, "Microsoft’s premium lightweight device", "../picture/laptop/Surface_Laptop_5.jpg"));
            products.Add(new Product(39, "Razer Blade 14", "laptop", 110.0m, "Compact gaming laptop with style", "../picture/laptop/Razer_Blade_14.jpg"));
            products.Add(new Product(40, "LG Gram 17", "laptop", 82.0m, "Ultra-light 17-inch laptop", "../picture/laptop/LG_Gram_17.jpg"));

            // Kind 5: Smartphones (dienthoai)
            products.Add(new Product(41, "iPhone 15 Pro", "dienthoai", 90.0m, "Apple’s latest flagship phone", "../picture/dienthoai/iPhone_15_Pro.jpg"));
            products.Add(new Product(42, "Samsung Galaxy S24", "dienthoai", 80.0m, "High-performance Android phone", "../picture/dienthoai/Samsung_Galaxy_S24.jfif"));
            products.Add(new Product(43, "Google Pixel 9", "dienthoai", 75.0m, "Best camera with stock Android", "../picture/dienthoai/Google_Pixel_9.jpg"));
            products.Add(new Product(44, "OnePlus 12", "dienthoai", 65.0m, "Fast charging and smooth display", "../picture/dienthoai/OnePlus_12.jpg"));
            products.Add(new Product(45, "Xiaomi 14 Pro", "dienthoai", 60.0m, "Affordable flagship with great specs", "../picture/dienthoai/Xiaomi_14_Pro.jfif"));
            products.Add(new Product(46, "Oppo Find X6", "dienthoai", 70.0m, "Stylish design with top camera", "../picture/dienthoai/Oppo_Find_X6.png"));
            products.Add(new Product(47, "Vivo X90", "dienthoai", 62.0m, "High-quality display and performance", "../picture/dienthoai/Vivo_X90.png"));
            products.Add(new Product(48, "Sony Xperia 1 V", "dienthoai", 1000.0m, "4K display for media lovers", "../picture/dienthoai/Sony_Xperia_1_V.jfif"));
            products.Add(new Product(49, "Huawei P60 Pro", "dienthoai", 78.0m, "Advanced photography features", "../picture/dienthoai/Huawei_P60_Pro.jpg"));
            products.Add(new Product(50, "Nokia G400", "dienthoai", 40.0m, "Budget-friendly durable phone", "../picture/dienthoai/Nokia_G400.jfif"));

            Application["Products"] = products;


            // Initialize the user list
            List<User> users = new List<User>();
            users.Add(new User
            {
                Username = "testuser",
                Password = "password123",
                LastName = "Nguyen",
                FirstName = "Test",
                Email = "testuser@example.com",
                Phone = "0987654321",
                Country = "việt nam",
                Gender = "male",
                Address = "123 Test Street"
            });
            Application["Users"] = users;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}