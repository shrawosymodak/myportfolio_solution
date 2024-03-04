using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace myportfolio
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            t1.Attributes["class"] = "bx bx-layer";

            if (!IsPostBack)
            {


                HttpCookie cookie = Request.Cookies["UserInfo"];

                if (cookie != null)
                {
                    Admin_login.HRef = "viewpage.aspx";
                }
                else
                {
                    Admin_login.HRef = "loginpage.aspx";
                }



                string connectionString = "Server=localhost;Database=practice;Uid=root;Pwd=;";
                MySqlConnection connection = new MySqlConnection(connectionString);

                try
                {
                    connection.Open();
                    string query = "SELECT id, name, description, image_url , github_link FROM projects order by order_number";
                    MySqlCommand command = new MySqlCommand(query, connection);

                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Project1_name.InnerText = reader.GetString("name");
                            Project1_description.InnerText = reader.GetString("description");

                        }
                        if (reader.Read())
                        {
                            Project2_name.InnerText = reader.GetString("name");
                            Project2_description.InnerText = reader.GetString("description");

                        }
                        if (reader.Read())
                        {
                            Project3_name.InnerText = reader.GetString("name");
                            Project3_description.InnerText = reader.GetString("description");

                        }
                        if (reader.Read())
                        {
                            Project4_name.InnerText = reader.GetString("name");
                            Project4_description.InnerText = reader.GetString("description");

                        }
                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }

                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }

            }

        }
    }
}