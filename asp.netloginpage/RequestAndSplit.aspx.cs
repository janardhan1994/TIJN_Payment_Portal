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
    public partial class RequestMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSuccessMessage.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=ZOMBIE-PC\SQLEXPRESS;initial Catalog=LoginDB;Integrated Security=True;");
            SqlCommand cmd = new SqlCommand("insert into RequestPayment(payeeUserID,requester,requestDateTime,amount,memo) values (@payeeUserID,@requester, @requestDateTime, @amount, @memo)", con);
            cmd.Parameters.AddWithValue("payeeUserID", payeeUserID.Text);
            cmd.Parameters.AddWithValue("requester", Session["UserName"]);
            cmd.Parameters.AddWithValue("requestDateTime", DateTime.Now);
            cmd.Parameters.Add("@amount", SqlDbType.Real);
            cmd.Parameters["@amount"].Value = amount.Text;
            cmd.Parameters.AddWithValue("memo", memo.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblSuccessMessage.Visible = true;
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