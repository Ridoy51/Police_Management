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
    public partial class Police_Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.Cookies["name"] != null && Request.Cookies["id"] != null)
                {
                    l_id.Text = Request.Cookies["id"].Value;
                    l_username.Text = Request.Cookies["name"].Value;
                }
            }
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_home.aspx");
        }

        protected void submittbutton_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from Police where Id = '" + l_id.Text + "' and Password='"+l_password.Text+"' and Name ='"+l_username.Text+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["UserName"] = l_username.Text;
                Session["logout"] = l_username.Text;

                Response.Cookies["id"].Value=l_id.Text;
                Response.Cookies["name"].Value=l_username.Text;
                Response.Cookies["name"].Expires=DateTime.Now.AddSeconds(30);
                Response.Cookies["id"].Expires=DateTime.Now.AddSeconds(30);

                l_id.Text = "";
                l_password.Text = "";
                l_username.Text = "";
                Response.Redirect("Police_Home.aspx");
            }
            else
            {
                l_id.Text = "";
                l_password.Text = "";
                l_username.Text = "";
                p_massage.Text = "Invalide User Name or Password";
            }
        }
    }
}