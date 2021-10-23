using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoArcade
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["role"]==null)
                {
                    LinkButton3.Visible = true;     //user login link button

                    LinkButton4.Visible = false;    //whole user logout button
                    LinkButton5.Visible = false;    //whole admin logout button

                    LinkButton6.Visible = true;    //admin login link button
                    LinkButton7.Visible = false;    //developer management link button
                    LinkButton8.Visible = false;    //publisher management link button
                    LinkButton9.Visible = false;    //game inventory link button
                    LinkButton11.Visible = false;    //user management link button
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton3.Visible = false;     //user login link button

                    LinkButton4.Visible = true;    //whole user logout button
                    LinkButton12.Text = "Hello " + Session["username"].ToString();

                    LinkButton5.Visible = false;    //whole admin logout button

                    LinkButton6.Visible = true;    //admin login link button
                    LinkButton7.Visible = false;    //developer management link button
                    LinkButton8.Visible = false;    //publisher management link button
                    LinkButton9.Visible = false;    //game inventory link button
                    LinkButton11.Visible = false;    //user management link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton3.Visible = false;     //user login link button

                    LinkButton4.Visible = false;    //whole user logout button
                    LinkButton5.Visible = true;    //whole admin logout button

                    LinkButton6.Visible = false;    //admin login link button
                    LinkButton7.Visible = true;    //developer management link button
                    LinkButton8.Visible = true;    //publisher management link button
                    LinkButton9.Visible = true;    //game inventory link button
                    LinkButton11.Visible = true;    //user management link button
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindevelopermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("admingameinventory.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminusermanagement.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("allgames.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton3.Visible = true;     //user login link button

            LinkButton4.Visible = false;    //whole user logout button
            LinkButton5.Visible = false;    //whole admin logout button

            LinkButton6.Visible = true;    //admin login link button
            LinkButton7.Visible = false;    //developer management link button
            LinkButton8.Visible = false;    //publisher management link button
            LinkButton9.Visible = false;    //game inventory link button
            LinkButton11.Visible = false;    //user management link button

            Response.Redirect("Home.aspx");
        }

        protected void LinkButton18_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton3.Visible = true;     //user login link button

            LinkButton4.Visible = false;    //whole user logout button
            LinkButton5.Visible = false;    //whole admin logout button

            LinkButton6.Visible = true;    //admin login link button
            LinkButton7.Visible = false;    //developer management link button
            LinkButton8.Visible = false;    //publisher management link button
            LinkButton9.Visible = false;    //game inventory link button
            LinkButton11.Visible = false;    //user management link button

            Response.Redirect("Home.aspx");
        }
    }
}