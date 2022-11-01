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
    public partial class verify : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            v_verify.BackColor = System.Drawing.Color.FromArgb(255, 165, 0);
            v_session.Text = (string)Session["UserName"];
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void v_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Police_Home.aspx");
        }

        protected void v_criminal_Click(object sender, EventArgs e)
        {
            Response.Redirect("criminal.aspx");
        }

        protected void v_verify_Click(object sender, EventArgs e)
        {
            Response.Redirect("verify.aspx");
        }

        protected void v_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_home.aspx");
        }

        protected void v_submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from Criminal where Name = '" + v_name.Text + "' and NID = '"+v_nid.Text+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows[0][0].ToString() != "0")
            {
                v_masage.Text = "Record Found";
                GridView1.Visible = true;
                
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Criminal where Name = '" + v_name.Text + "' and NID = '" + v_nid.Text + "'";
                cmd.ExecuteNonQuery();
                DataTable dt1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd);
                da1.Fill(dt1);
                GridView1.DataSource = dt1;
                GridView1.DataBind();
                delete();
                v_mobile.Text = "";
                v_name.Text = "";
                v_nid.Text = "";
                v_area.Text = "";
            }
            else
            {
                insert();
                delete();
                v_mobile.Text = "";
                v_name.Text = "";
                v_nid.Text = "";
                v_area.Text = "";
                v_masage.Text = "No Record Found";
            }
        }
        protected void insert()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from verified where Name = '" + v_name.Text + "' and Id = '" + v_nid.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows[0][0].ToString() == "0")
            {
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "insert into verified values('" + v_nid.Text + "','" + v_name.Text + "','" + v_mobile.Text + "','" + v_area.Text + "')";
                cmd1.ExecuteNonQuery();
            }
            else
            {
                delete();
            }
            
        }
        protected void delete()
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "delete from Verify where NID = '"+v_nid.Text+"'";
            cmd1.ExecuteNonQuery();
        }
        protected void v_application_Click(object sender, EventArgs e)
        {
            Response.Redirect("Application.aspx");
        }
        protected void show()
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from verified";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }

        protected void v_see_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            show();
        }
    }
}