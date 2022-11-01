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
    public partial class verification : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           u_verification.BackColor = System.Drawing.Color.FromArgb(255, 165, 0);
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

        protected void v_submit_Click(object sender, EventArgs e)
        {
            if(!FileUpload1.HasFiles)
            {
                image.Text = "Upload image";
            }
            else
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Verify values('" + v_name.Text + "','" + v_nid.Text + "','" + v_mobile.Text + "','" + v_area.Text + "','"+pic+"')";
                cmd.ExecuteNonQuery();

                v_massage.Text = "Submitted Successfully. We will inform you after some dayes.\n Thank You";

                v_name.Text = "";
                v_f_name.Text = "";
                v_m_name.Text = "";
                v_date.Text = "";
                v_area.Text = "";
                v_mobile.Text = "";
                v_nid.Text = "";
                v_nationality.Text = "";
                v_religion.Text = "";
            }
            
        }

        protected void certificate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from verified where Id = '" + v_nid.Text + "' and Name ='" + v_name.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                
                Response.Redirect("download.aspx");
            }
            else
            {
                v_massage.Text = "Invalide User Name or Password";
            }
        }
    }
}