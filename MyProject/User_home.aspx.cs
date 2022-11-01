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
    public partial class User_home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            u_home.BackColor = System.Drawing.Color.FromArgb(255, 165, 0);
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            u_session.Text = (string)Session["name"];
        }
        protected void u_home_Click(object sender, EventArgs e)
        {
            if (u_session.Text != "")
            { Response.Redirect("User_home.aspx"); }
            else
            {
                u_massage.Text = "Log In(User) first";
            }
        }

        protected void u_fir_Click(object sender, EventArgs e)
        {
            if (u_session.Text != "")
            { Response.Redirect("FIR.aspx"); }
            else
            {
                u_massage.Text = "Log In(User) first";
            }
        }

        protected void u_verification_Click(object sender, EventArgs e)
        {
            if (u_session.Text != "")
            { Response.Redirect("verification.aspx"); }
            else
            {
                u_massage.Text = "Log In(User) first";
            }
        }

        protected void u_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Police_Login.aspx");
        }

        protected void u_contract_Click(object sender, EventArgs e)
        {
            if (u_session.Text != "")
            { Response.Redirect("Contact.aspx"); }
            else
            {
                u_massage.Text = "Log In(User) first";
            }
        }

        protected void user_login_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from Register where User_name = '" +u_username.Text+ "' and Password='" + u_password.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                u_massage.Text = "Logged In";
                Session["name"] = u_username.Text;
                u_session.Text = (string)Session["name"];
                u_username.Text = "";
                u_password.Text = "";   
            }
            else
            {
                u_massage.Text = "Invalide User Name and Password";
            }
        }

        protected void u_logout_Click(object sender, EventArgs e)
        {
            Session["name"] = "";
            u_session.Text = "";
            u_massage.Text = "Logged Out";
        }
    }
}