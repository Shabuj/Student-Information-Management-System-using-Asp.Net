using StudentInformationApp.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace StudentInformationApp.DAL
{
    public class StudentGateway
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["IMDB"].ConnectionString;
        public bool SaveStudent(Student student)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO " +
                "student_tbl(StudentName,RegNo,Email,MobileNo,Age,Address)" +
                " VALUES('" + student.StudentName + "','" + student.StudentRegNo + "'," +
                "'" + student.StudentEmail + "','" + student.StudentMobileNo + "'," +
                "" + student.StudentAge + ",'" + student.StudentAddress + "') ";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowEffect = command.ExecuteNonQuery();
            connection.Close();
            if (rowEffect > 0)
            {
                return true;
            }

            return false;
        }

        public bool updateStudent(Student student)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "UPDATE Student_tbl SET StudentName='"+student.StudentName+"', Email='"+student.StudentEmail+"' WHERE RegNo='"+student.StudentRegNo+"'; ";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowEffect = command.ExecuteNonQuery();
            connection.Close();
            if (rowEffect > 0)
            {
                return true;
            }

            return false;
        }

        public bool deleteStudent(Student student)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "DELETE  FROM Student_tbl WHERE RegNo='" + student.StudentRegNo + "'; ";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowEffect = command.ExecuteNonQuery();
            connection.Close();
            if (rowEffect > 0)
            {
                return true;
            }

            return false;
        }

        public bool GetExistStudent(Student student)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM Student_tbl WHERE RegNo = '"+student.StudentRegNo+"';";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            Student aStudent = null;
            while(reader.Read())
            {
                aStudent = new Student();
                aStudent.StudentName = reader["StudentName"].ToString();
                aStudent.StudentRegNo = reader["RegNo"].ToString();
                aStudent.StudentEmail = reader["Email"].ToString();
                aStudent.StudentMobileNo = reader["MobileNo"].ToString();
                aStudent.StudentAge = Convert.ToInt32(reader["Age"]);
                aStudent.StudentAddress = reader["Address"].ToString();
               


           }
            reader.Close();
            connection.Close();
            if(aStudent!=null) 
            {
                return true;
            }
            return false;

        }

        public List<Student> GetAllStudent()
        {
            List<Student> studentList = new List<Student>();
            
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM Student_tbl order by StudentId desc ";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int studentId = (int)reader["StudentId"];
                string studentName = reader["StudentName"].ToString();
                string regNo = reader["RegNo"].ToString();
                string email = reader["Email"].ToString();
                string mobileNo = reader["MobileNo"].ToString();
                int age = (int)reader["Age"];
                string address = reader["Address"].ToString();

                Student student1 = new Student(studentName, regNo, email, mobileNo, age, address);
                student1.StudentId = studentId;
                studentList.Add(student1);

            }
            reader.Close();
            connection.Close();
            return studentList;
        }
    }
}