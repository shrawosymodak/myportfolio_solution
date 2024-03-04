using MySql.Data.MySqlClient;
using System;
using System.Web.UI;

namespace myportfolio
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = "Server=localhost;Database=practice;Uid=root;Pwd=;";
                MySqlConnection connection = new MySqlConnection(connectionString);

                int id = int.Parse(Request.QueryString["id"]);

                try
                {
                    connection.Open();
                    string query = "SELECT name, description, image_url, github_link, order_number FROM projects WHERE Id = @id";
                    MySqlCommand command = new MySqlCommand(query, connection);
                    command.Parameters.AddWithValue("@id", id);

                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Project_Name.Text = reader["name"].ToString();
                            Project_description.Value = reader["description"].ToString();
                            // You can fetch and assign other fields if needed
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle the exception (e.g., display an error message)
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
                }
                finally
                {
                    if (connection.State == System.Data.ConnectionState.Open)
                        connection.Close();
                }
            }
        }

        protected void Project_Edit(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Database=practice;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);

            int id = int.Parse(Request.QueryString["id"]);
            string name = Project_Name.Text;
            string description = Project_description.Value;
            // Consider where you'll get the values for image_url, github_link, and order_number
            string image_url = "hhh";
            string github_link = "hhh";
            string order_number = "hhh";

            try
            {
                connection.Open();
                string query = "UPDATE projects SET name = @name, description = @description, image_url = @image_url, github_link = @github_link, order_number = @order_number WHERE id = @id";
                MySqlCommand command = new MySqlCommand(query, connection);

                command.Parameters.AddWithValue("@name", name);
                command.Parameters.AddWithValue("@description", description);
                command.Parameters.AddWithValue("@image_url", image_url);
                command.Parameters.AddWithValue("@github_link", github_link);
                command.Parameters.AddWithValue("@order_number", order_number);
                command.Parameters.AddWithValue("@id", id);

                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Display a success message
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Update successful');", true);
                    // Redirect to viewpage.aspx
                    Response.Redirect("~/viewpage.aspx");
                }
                else
                {
                    // Display a message if no rows were updated
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No rows updated.');", true);
                }
            }
            catch (Exception ex)
            {
                // Handle the exception (e.g., display an error message)
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
            }
            finally
            {
                if (connection.State == System.Data.ConnectionState.Open)
                    connection.Close();
            }
        }
    }
}
