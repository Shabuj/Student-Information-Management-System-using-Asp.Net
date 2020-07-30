using StudentInformationApp.BLL;
using StudentInformationApp.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInformationApp
{
    public partial class StudentInfoUi : System.Web.UI.Page
    {
        StudentManager studentManager = new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string name = inputStudentName.Value;
            string regNo = inputRegNo.Value;
            string email = inputEmailAddress.Value;
            string mobileNo = inputMobileNo.Value;
            int age = Convert.ToInt32(inputAge.Value);
            string address = inputAddress.Value;

            Student student = new Student(name,regNo,email,mobileNo,age,address);
            messageLabel.Text= studentManager.SaveStudent(student);

        }
        protected void ClearField()
        {
            inputStudentName.Value = String.Empty;
            inputRegNo.Value = String.Empty;
            inputEmailAddress.Value = String.Empty;
            inputMobileNo.Value = String.Empty;
            inputAge.Value = String.Empty;
            inputAddress.Value = String.Empty;
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            string name = inputStudentName.Value;
            string regNo = inputRegNo.Value;
            string email = inputEmailAddress.Value;
            string mobileNo = inputMobileNo.Value;
            int age = Convert.ToInt32(inputAge.Value);
            string address = inputAddress.Value;

            Student student = new Student(name, regNo, email, mobileNo, age, address);

            bool isUpdated=studentManager.UpdateStudent(student);
            if(isUpdated)
            {
                messageLabel.ForeColor = Color.Green;
                messageLabel.Text = "Student Updated Successfully Done.";
            }
            else
            {
                messageLabel.Text = "Student does not exists ";
                messageLabel.ForeColor = Color.Red;
            }
          
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            string name = inputStudentName.Value;
            string regNo = inputRegNo.Value;
            string email = inputEmailAddress.Value;
            string mobileNo = inputMobileNo.Value;
            int age = Convert.ToInt32(inputAge.Value);
            string address = inputAddress.Value;

            Student student = new Student(name, regNo, email, mobileNo, age, address);
            bool isdeleted = studentManager.DeleteStudent(student);
            if(isdeleted)
            {
               messageLabel.Text="Student Deleted Successfully .";
                messageLabel.ForeColor = Color.Green;

            }
            else
            {
                messageLabel.Text = "Student Does not Existed ";
                messageLabel.ForeColor = Color.Red;
            }
        }
    }


}