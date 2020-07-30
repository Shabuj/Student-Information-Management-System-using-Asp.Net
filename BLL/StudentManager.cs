using StudentInformationApp.DAL;
using StudentInformationApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentInformationApp.BLL
{
    public class StudentManager
    {
        StudentGateway gateway = new StudentGateway();
        public string SaveStudent(Student student)
        {
            

            bool isExistStudent = gateway.GetExistStudent(student);
            if(isExistStudent)
            {
                return "Registration no must be Unique ..Try again..";
            }
            bool isSaved = gateway.SaveStudent(student);
            if (isSaved)
            {
                return "Student Saved Successfully .!";
            }
            else
            {
                 return "Save Failed ";
            }
              

        }

        public List<Student> GetAllStudent()
        {
            return gateway.GetAllStudent();
        }

        public bool UpdateStudent(Student student)
        {
           bool isExistStudent=gateway.GetExistStudent(student);
            if (isExistStudent)
            {
               return gateway.updateStudent(student);
            }
            else
            {
                return false;
            }
        }

        public bool DeleteStudent(Student student)
        {
            bool IsExisted = gateway.GetExistStudent(student);
            if(IsExisted)
            {
                return gateway.deleteStudent(student);
            }
           
            return false;
        }
    }
}