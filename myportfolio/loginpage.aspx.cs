using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace myportfolio
{
    public partial class loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Button click event handler
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            HttpCookie cookie = new HttpCookie("UserInfo");

            cookie["username"] = username;
            cookie["password"] = password;



            cookie.Expires = DateTime.Now.AddDays(30);

            Response.Cookies.Add(cookie);

            string connectionString = "Server=localhost;Database=practice;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);


            try
            {
                connection.Open();
                string query = "SELECT username, password FROM login WHERE username= @Username";
                MySqlCommand command = new MySqlCommand(query, connection);

                command.Parameters.AddWithValue("@Username", username);
                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        //string username = reader["username"].ToString();
                        string pass = reader["password"].ToString();



                        if (pass == password)
                        {
                            Response.Redirect("~/viewpage.aspx");
                        }
                        else
                        {

                        }


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