using System;
using System.Data.SqlClient;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlineLeave
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection dbConnection = new SqlConnection(@"Data Source = LAPTOP-CMFBOBNE\SQLEXPRESS; Initial Catalog = AspConnectivity; User ID = sa; Password = Priya");
            string command = "insertEmployee";              //stored prodecure
            using (SqlCommand insertCommand = new SqlCommand(command, dbConnection))
            {
                insertCommand.CommandType = System.Data.CommandType.StoredProcedure;
                insertCommand.Parameters.AddWithValue("@getEmployeeName", TextBox1.Text);
                insertCommand.Parameters.AddWithValue("@getEmployeeId", TextBox2.Text);
                insertCommand.Parameters.AddWithValue("@getEmployeePhoneNumber", TextBox3.Text);
                insertCommand.Parameters.AddWithValue("@getEmployeeCity", DropDownList1.Text);
                insertCommand.Parameters.AddWithValue("@getEmployeeGmail", TextBox4.Text);
                dbConnection.Open();
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
                sqlDataAdapter.InsertCommand = insertCommand;
                int affectedRows = insertCommand.ExecuteNonQuery();                  
            }
            Response.Write("Added Successfully");
        }
    }
}