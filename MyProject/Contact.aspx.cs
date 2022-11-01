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
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            u_contract.BackColor = System.Drawing.Color.FromArgb(255, 165, 0);

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

        protected void u_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Police_Login.aspx");
        }

        protected void u_contract_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void c_submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from Police where Area = '" + c_area.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows[0][0].ToString() != "0")
            {
                c_massage.Text = "Record Found";
                GridView1.Visible = true;
                SqlCommand cmd1 = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select Id,Name,Mobile from Police where Area = '" + c_area.Text + "'";
                cmd.ExecuteNonQuery();
                DataTable dt1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd);
                da1.Fill(dt1);
                GridView1.DataSource = dt1;
                GridView1.DataBind();
                c_area.Text = "";
            }
            else
            {
                c_massage.Text = "No Record Found";
                GridView1.Visible = false;
            }
        }
    }
}