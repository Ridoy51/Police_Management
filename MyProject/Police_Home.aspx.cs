using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            u_home.BackColor = System.Drawing.Color.FromArgb(255, 165, 0);

            if ((string)Session["logout"] == "logout")
            {
                Response.Redirect("Police_Login.aspx");
            }
            else
            { h_session.Text = (string)Session["UserName"]; }
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
            Session["logout"] = "logout";
            Response.Redirect("User_home.aspx");
        }

        protected void h_applicaqtion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Application.aspx");
        }
    }
}