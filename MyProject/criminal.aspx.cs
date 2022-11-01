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
    public partial class criminal : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            c_criminal.BackColor = System.Drawing.Color.FromArgb(255, 165, 0);
         
            c_session.Text = (string)Session["UserName"];
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void c_home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Police_Home.aspx");
        }

        protected void c_criminal_Click(object sender, EventArgs e)
        {
            Response.Redirect("criminal.aspx");
        }

        protected void c_verify_Click(object sender, EventArgs e)
        {
            Response.Redirect("verify.aspx");
        }

        protected void c_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_home.aspx");
        }

        protected void update_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label8.Visible = true;

            c_upadetename.Visible = true;
            c_updatenid.Visible = true;
            c_updatepunishment.Visible = true;
            c_updatecrimeid.Visible = true;

            finalupdate.Visible = true;

            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;

            c_addname.Visible = false;
            c_addnid.Visible = false;
            c_addcrimeid.Visible = false;
            c_addpunishment.Visible = false;

            Add.Visible = false;

        }

        protected void NewAdd_Click(object sender, EventArgs e)
        {
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;

            c_addname.Visible = true;
            c_addnid.Visible = true;
            c_addcrimeid.Visible = true;
            c_addpunishment.Visible = true;

            Add.Visible = true;

            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label8.Visible = false;

            c_upadetename.Visible = false;
            c_updatenid.Visible = false;
            c_updatepunishment.Visible = false;
            c_updatecrimeid.Visible = false;

            finalupdate.Visible = false;
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Criminal values('" + c_addname.Text + "','" + c_addnid.Text + "','" + c_addcrimeid.Text + "','" + c_addpunishment.Text + "')";
            cmd.ExecuteNonQuery();
            c_massage.Text = "A New Data is Added Successfully";
            c_addcrimeid.Text = "";
            c_addname.Text = "";
            c_addnid.Text = "";
            c_addpunishment.Text = "";
        }

        protected void finalupdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from Criminal where NID='" + c_updatenid.Text + "' and Crime_ID='" + c_updatecrimeid.Text + "' and Name = '"+c_upadetename.Text+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows[0][0].ToString() != "0")
            {
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "update Criminal set Punishment = '" + c_updatepunishment.Text + "' where NID='" + c_updatenid.Text + "' and Crime_ID='" + c_updatecrimeid.Text + "' and Name = '"+c_upadetename.Text+"'";
                cmd1.ExecuteNonQuery();
                c_massage.Text = "Updated Successfully";
            }
            else
            {
                c_massage.Text = "Enter Valid Information";
            }
            c_upadetename.Text = "";
            c_updatecrimeid.Text = "";
            c_updatenid.Text = "";
            c_updatepunishment.Text = "";
        }

        protected void c_application_Click(object sender, EventArgs e)
        {
            Response.Redirect("Application.aspx");
        }
    }
}