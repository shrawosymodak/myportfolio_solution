using MySql.Data.MySqlClient;
using System;
using System.Web.UI;

namespace myportfolio
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Project_Add(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Database=practice;Uid=root;Pwd=;";

            string name = Project_Name.Text;
            string description = Project_description.Value;
            string image_url = "gg"; // Consider where you'll get this value from
            string github_link = "hhh"; // Consider where you'll get this value from
            string order_number = "9"; // Consider where you'll get this value from

            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "INSERT INTO projects (name, description, image_url, github_link, order_number) " +
                                   "VALUES (@name, @description, @image_url, @github_link, @order_number)";
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@name", name);
                        command.Parameters.AddWithValue("@description", description);
                        command.Parameters.AddWithValue("@image_url", image_url);
                        command.Parameters.AddWithValue("@github_link", github_link);
                        command.Parameters.AddWithValue("@order_number", order_number);

                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inserted successful');", true);
                            Response.Redirect("~/viewpage.aspx");
                        }
                        else
                        {
                            // Display an error message or handle the case where no rows were affected
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No rows updated.');", true);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Display or log the exception
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
            }
        }
    }
}
