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
    public partial class adminusermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // GO BUTTON CLICK
        protected void Button1_Click(object sender, EventArgs e)
        {
                getUserByID();
        }

        // DELETE USER BUTTON CLICK
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfUserExists())
            {
                deleteUserByID();
            }
            else
            {
                Response.Write("<script>alert('Invalid Username.');</script>");
            }
        }

        // STATUS ACTIVE BUTTON CLICK
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfUserExists())
            {
                updateUserStatusByID("active");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username.');</script>");
            }
        }

        // STATUS PENDING BUTTON CLICK
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfUserExists())
            {
                updateUserStatusByID("pending");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username.');</script>");
            }
        }

        // STATUS DEACTIVE BUTTON CLICK
        protected void Button5_Click(object sender, EventArgs e)
        {
            if (checkIfUserExists())
            {
                updateUserStatusByID("deactive");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username.');</script>");
            }
        }




        // user defined functions



        bool checkIfUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from user_master_tbl where username='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }




        void deleteUserByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("DELETE from user_master_tbl WHERE username='" + TextBox1.Text.Trim() + "'", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Deleted Successfully.');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        void getUserByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from user_master_tbl where username='" + TextBox1.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox8.Text = dr.GetValue(0).ToString();
                        TextBox9.Text = dr.GetValue(10).ToString();
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox5.Text = dr.GetValue(4).ToString();
                        TextBox6.Text = dr.GetValue(5).ToString();
                        TextBox7.Text = dr.GetValue(6).ToString();
                        TextBox10.Text = dr.GetValue(7).ToString();

                    }
                }
                else
                {
                    Response.Write("<script>alert('INVALID CREDENTIALS!!');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }




        void updateUserStatusByID(string status)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE user_master_tbl SET account_status='"+status+"' where username='" + TextBox1.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Status Updated.');</script>");
                getUserByID();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        void clearForm()
        {
            TextBox1.Text = ""; 
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox10.Text = "";
        }
    }
}