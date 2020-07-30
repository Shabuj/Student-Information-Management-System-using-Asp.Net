using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentInformationApp.Models
{
    public class Student
    {
        public int StudentId { get; set; }
        public string StudentName{ get; set; }
        public string StudentRegNo { get; set; }
        public string StudentEmail { get; set; }
        public string StudentMobileNo { get; set; }
        public int StudentAge { get; set; }
        public string StudentAddress { get; set; }

        public Student(string name, string regNo, string email,string mobileNo, int age, string address)
        {
            StudentName = name;
            StudentRegNo = regNo;
            StudentEmail = email;
            StudentMobileNo = mobileNo;
            StudentAge = age;
            StudentAddress = address;
        }

        public Student()
        {

        }
    }
}