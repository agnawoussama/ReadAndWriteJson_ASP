using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReadAndWriteJson_ASP
{
    public class Person
    {
        public string CIN { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }

        public Person(string cIN, string name, int age)
        {
            CIN = cIN;
            Name = name;
            Age = age;
            
        }

           
        public static List<Person> listPers = new List<Person>();
        
        public override string ToString()
        {
            return Name;
        }
    }
}