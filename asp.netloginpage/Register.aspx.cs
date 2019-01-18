using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace asp.netloginpage
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=ZOMBIE-PC\SQLEXPRESS;initial Catalog=LoginDB;Integrated Security=True;");
            SqlCommand cmd = new SqlCommand("insert into Registration values (@FirstName, @LastName, @Email, @MobileNumber, @Balance, @UserName)", con);
            cmd.Parameters.AddWithValue("FirstName", FirstName.Text);
            cmd.Parameters.AddWithValue("LastName", LastName.Text);
            cmd.Parameters.AddWithValue("Email", Email.Text);
            cmd.Parameters.Add("@MobileNumber", SqlDbType.BigInt);
            cmd.Parameters["@MobileNumber"].Value = MobileNumber.Text;
            cmd.Parameters.AddWithValue("Balance", Balance.Text);
            cmd.Parameters.AddWithValue("UserName", UserName.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("insert into UserLogin (UserName,Password) values (@Username, @Password)", con);
            cmd1.Parameters.AddWithValue("UserName", UserName.Text);
            cmd1.Parameters.AddWithValue("Password", Password.Text);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }
    }
}
