using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MyProject
{
    public partial class FIR : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            u_fir.BackColor = System.Drawing.Color.FromArgb(255, 165, 0);

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void u_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_home.aspx");
        }

        protected void u_fir_Click(object sender, EventArgs e)
        {
            Response.Redirect("FIR.aspx");
        }

        protected void u_verification_Click(object sender, EventArgs e)
        {
            Response.Redirect("verification.aspx");
        }

        protected void u_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Police_login.aspx");
        }

        protected void u_contract_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void f_submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into FIR values('"+f_name.Text+"','"+f_mobile.Text+"','"+ f_desc.Text + "','"+f_thana.Text+"')";
            cmd.ExecuteNonQuery();
            f_massage.Text = "Submitted Successfully";
            f_desc.Text = "";
            f_mobile.Text = "";
            f_name.Text = "";
            f_thana.Text = "";
        }
    }
}