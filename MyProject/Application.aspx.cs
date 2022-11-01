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
    public partial class Application : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            h_applicaqtion.BackColor = System.Drawing.Color.FromArgb(255, 165, 0);
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            
        }

        protected void c_criminal_Click(object sender, EventArgs e)
        {
            Response.Redirect("Application.aspx");
        }

        protected void u_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Police_Home.aspx");
        }

        protected void h_criminal_Click(object sender, EventArgs e)
        {
            Response.Redirect("criminal.aspx");
        }

        protected void h_verify_Click(object sender, EventArgs e)
        {
            Response.Redirect("verify.aspx");
        }

        protected void h_logout_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Response.Redirect("User_home.aspx");
        }

        protected void show_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from Verify";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            verification.DataSource = dt1;
            verification.DataBind();
        }
    }
}