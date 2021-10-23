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
    public partial class admindevelopermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // ADD BUTTON CLICK
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkIfDeveloperExists())
            {
                Response.Write("<script>alert('Developer with this ID alreay Exist. You cannot add another Developer with the same Developer ID.');</script>");
            }
            else
            {
                addNewDeveloper();
            }
        }

        // UPDATE BUTTON CLICK
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfDeveloperExists())
            {
                updateDeveloper();
            }
            else
            {
                Response.Write("<script>alert('Developer with this ID does not Exist');</script>");
            }
        }

        // DELETE BUTTON CLICK
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfDeveloperExists())
            {
                deleteDeveloper();
            }
            else
            {
                Response.Write("<script>alert('Developer with this ID does not Exist');</script>");
            }
        }

        // GO BUTTON CLICK
        protected void Button4_Click(object sender, EventArgs e)
        {
            getDeveloperByID();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }





        // user defined method


        void getDeveloperByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from developer_master_tbl where developer_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Developer ID.');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }
        }



        void deleteDeveloper()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("DELETE from developer_master_tbl WHERE developer_id='" + TextBox1.Text.Trim() + "'", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Developer Deleted Successfully.');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }





        void updateDeveloper()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("UPDATE developer_master_tbl SET developer_name=@developer_name WHERE developer_id='"+TextBox1.Text.Trim()+"'", con);

                
                cmd.Parameters.AddWithValue("@developer_name", TextBox2.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Developer Updated Successfully.');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }





        void addNewDeveloper()
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO developer_master_tbl(developer_id,developer_name) values(@developer_id,@developer_name)", con);

                cmd.Parameters.AddWithValue("@developer_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@developer_name", TextBox2.Text.Trim());
                

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Developer added Successfully.');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }





        bool checkIfDeveloperExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from developer_master_tbl where developer_id='" + TextBox1.Text.Trim() + "';", con);
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

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}