using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoArcade
{
    public partial class admingameinventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDeveloperPublisherValues();
            }            
            GridView1.DataBind();
        }

        // GO BUTTON CLICK
        protected void Button4_Click(object sender, EventArgs e)
        {
            getGameByID();
        }

        // ADD BUTTON CLICK
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkIfGameExists())
            {
                Response.Write("<script>alert('Game with this ID alreay Exist. You cannot add another Game with the same Game ID.');</script>");
            }
            else
            {
                addNewGame();
            }
        }

        // UPDATE BUTTON CLICK
        protected void Button2_Click(object sender, EventArgs e)
        {
            if(checkIfGameExists())
            {
                updateGameByID();
            }
            else
            {
                Response.Write("<script>alert('Game with this ID does not Exist.');</script>");
            }
        }

        // DELETE BUTTON CLICK
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfGameExists())
            {
                deleteGameByID();
            }
            else
            {
                Response.Write("<script>alert('Game with this ID does not Exist.');</script>");
            }
        }





        // USER DEFINED FUNCTIONS



        void deleteGameByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("DELETE from game_master_tbl WHERE game_id='" + TextBox1.Text.Trim() + "'", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Deleted Successfully.');</script>");
                
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void updateGameByID()
        {
            try
            {
                //for multi genre insertion
                string genres = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                genres = genres.Remove(genres.Length - 1);

                //for image upload
                string filepath;
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                if(filename==""||filename==null)
                {
                    filepath = global_filepath;
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("game_inventory/" + filename));
                    filepath = "~/game_inventory/" + filename;
                }
                



                //regular code
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE game_master_tbl SET game_title=@game_title, genre=@genre, developer_name=@developer_name, publisher_name=@publisher_name, release_date=@release_date, game_cost=@game_cost, game_description=@game_description, game_img_link=@game_img_link where game_id='" + TextBox1.Text.Trim() + "';", con);

                cmd.Parameters.AddWithValue("@game_title", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@developer_name", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@release_date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@game_cost", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@game_description", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@game_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Game Updated Successfully.');</script>");
                getGameByID();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }




        void getGameByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from game_master_tbl WHERE game_id='"+TextBox1.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count>=1)
                {
                    TextBox8.Text = dt.Rows[0]["game_title"].ToString();
                    TextBox2.Text = dt.Rows[0]["release_date"].ToString();
                    DropDownList2.SelectedValue = dt.Rows[0]["publisher_name"].ToString().Trim();
                    DropDownList1.SelectedValue = dt.Rows[0]["developer_name"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["game_cost"].ToString().Trim();
                    TextBox10.Text = dt.Rows[0]["game_description"].ToString();

                    ListBox1.ClearSelection();
                    string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split(','); 
                    for(int i=0; i<genre.Length;i++)
                    {
                        for(int j=0;j<ListBox1.Items.Count;j++)
                        {
                            if(ListBox1.Items[j].ToString()==genre[i])
                            {
                                ListBox1.Items[j].Selected = true;
                            }
                        }
                    }
                    global_filepath = dt.Rows[0]["game_img_link"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Game ID.');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }




        void fillDeveloperPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT developer_name from developer_master_tbl;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataValueField = "developer_name";
                DropDownList1.DataBind();


                cmd = new SqlCommand("SELECT publisher_name from publisher_master_tbl;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "publisher_name";
                DropDownList2.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }
        }



        bool checkIfGameExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from game_master_tbl where game_id='" + TextBox1.Text.Trim() + "';", con);
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



        void addNewGame()
        {
            try
            {
                //for multi genre insertion
                string genres = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                genres = genres.Remove(genres.Length - 1);

                //for image upload
                string filepath;
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("game_inventory/" + filename));
                filepath = "~/game_inventory/" + filename;



                //regular code
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO game_master_tbl(game_id,game_title,genre,developer_name,publisher_name,release_date,game_cost,game_description,game_img_link) values(@game_id,@game_title,@genre,@developer_name,@publisher_name,@release_date,@game_cost,@game_description,@game_img_link)", con);

                cmd.Parameters.AddWithValue("@game_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@game_title", TextBox8.Text.Trim());

                cmd.Parameters.AddWithValue("@genre", genres);

                cmd.Parameters.AddWithValue("@developer_name", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@release_date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@game_cost", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@game_description", TextBox10.Text.Trim());

                cmd.Parameters.AddWithValue("@game_img_link", filepath);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Game added Successfully.');</script>");
                
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}