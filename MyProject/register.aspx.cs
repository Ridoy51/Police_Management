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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void u_register_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from Register where User_name = '" + r_username.Text + "' and Password='"+r_password.Text+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows[0][0].ToString() == "0")
            {
                cmd.CommandText = "insert into Register values('"+r_username.Text+"','"+r_password.Text+"')";
                cmd.ExecuteNonQuery();
                Response.Redirect("User_home.aspx");
            }
            else
            {
               r_massage.Text = "This User name is already taken";
            } 
        }
    }
}