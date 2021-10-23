using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoArcade
{
    public partial class userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["username"].ToString()=="" || (Session["username"]==null))
                {
                    Response.Write("<script>alert('Session Expired Login Again.');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    if(!Page.IsPostBack)
                    {
                        getUserData();
                    }
                    
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Session Expired Login Again.');</script>");
                Response.Redirect("userlogin.aspx");
            }
        }

        // update button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || (Session["username"] == null))
                {
                    Response.Write("<script>alert('Session Expired Login Again.');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    updateUserDetails();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Session Expired Login Again.');</script>");
                Response.Redirect("userlogin.aspx");
            }
        }



        //user defined functions



        void updateUserDetails()
        {
            string password = "";
            if(TextBox11.Text.Trim() == "")
            {
                password = TextBox10.Text.Trim();
            }
            else
            {
                password = TextBox11.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE user_master_tbl set full_name=@full_name, dob=@dob, contact_no=@contact_no, email=@email, state=@state, city=@city, pincode=@pincode, full_address=@full_address, password=@password, account_status=@account_status WHERE username='"+Session["username"].ToString().Trim() +"'", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox8.Text.Trim());
                
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@account_status", "pending");


                int result = cmd.ExecuteNonQuery();
                con.Close();
                if(result > 0)
                {
                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserData();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Entry.');</script>");
                }

                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }




        void getUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from user_master_tbl where username='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["full_name"].ToString();
                TextBox2.Text = dt.Rows[0]["dob"].ToString();
                TextBox3.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox4.Text = dt.Rows[0]["email"].ToString();
                TextBox5.Text = dt.Rows[0]["state"].ToString();
                TextBox6.Text = dt.Rows[0]["city"].ToString();
                TextBox7.Text = dt.Rows[0]["pincode"].ToString();
                TextBox8.Text = dt.Rows[0]["full_address"].ToString();
                TextBox9.Text = dt.Rows[0]["username"].ToString();
                TextBox10.Text = dt.Rows[0]["password"].ToString();

                Label3.Text = dt.Rows[0]["account_status"].ToString().Trim();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }
        }
    }
}