using StudentInformationApp.BLL;
using StudentInformationApp.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInformationApp
{
    public partial class StudentList : System.Web.UI.Page
    {
        StudentManager studentManager = new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowAllStudent();
        }
        private void ShowAllStudent()
        {
            //List<Student> students = new List<Student>();
           // students=studentManager.GetAllStudent();
            GridView.DataSource = studentManager.GetAllStudent();
            GridView.DataBind();


        }
    }
}