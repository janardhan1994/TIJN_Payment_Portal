using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace asp.netloginpage
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=ZOMBIE-PC\SQLEXPRESS;initial Catalog=LoginDB;Integrated Security=True;");
            SqlCommand cmd = new SqlCommand("insert into BankAccount values (@BankID, @accountNumber,@UserName, @isPrimary)", con);
            cmd.Parameters.AddWithValue("BankID", BankID.Text);
            cmd.Parameters.AddWithValue("accountNumber", accountNumber.Text);
            cmd.Parameters.AddWithValue("UserName", Session["UserName"]);
            cmd.Parameters.AddWithValue("isPrimary", isPrimary.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Account.aspx");
        }

        protected void btmLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}