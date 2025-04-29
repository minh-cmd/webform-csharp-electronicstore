using System;

namespace btlwebcoban
{
    public class User
    {
        public string Username { get; set; }
        public string Password { get; set; } // In a real app, hash the password
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Country { get; set; }
        public string Gender { get; set; }
        public string Address { get; set; }

        public User()
        {
        }

        public User(string username, string password, string lastName, string firstName, string email, string phone, string country, string gender, string address)
        {
            Username = username;
            Password = password;
            LastName = lastName;
            FirstName = firstName;
            Email = email;
            Phone = phone;
            Country = country;
            Gender = gender;
            Address = address;
        }
    }
}