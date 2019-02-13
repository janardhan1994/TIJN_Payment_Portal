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
    public partial class Statements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
                Response.Redirect("Login.aspx");
            lblUserDetails.Text = "Username: " + Session["UserName"];

            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=ZOMBIE-PC\SQLEXPRESS;initial Catalog=LoginDB;Integrated Security=True;");
            SqlCommand cmd = new SqlCommand("select PaymentID, payorUserID, payeeUserID, paymentDateTime, amount from SendPayment where CAST(DATENAME(month, paymentDateTime) AS CHAR(3))=@month and CAST(DATENAME(year,paymentDateTime) AS CHAR(4))=@year and payorUserID=@UserName", con);
            cmd.Parameters.AddWithValue("month", DropDownList2.Text);
            cmd.Parameters.AddWithValue("year", Year.Text);
            cmd.Parameters.AddWithValue("UserName", Session["UserName"]);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView3.DataSource = ds;
            GridView3.DataBind();
            con.Close();
            Panel3.Visible = true;
            Panel1.Visible = false;
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