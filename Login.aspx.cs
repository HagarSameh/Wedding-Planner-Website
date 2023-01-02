using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Weddin_Planner
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click1(object sender, EventArgs e)
        //{
        //    SqlConnection conn = new SqlConnection();
        //    conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|wedding.mdf;Integrated Security=True";

        //    String strSelect = String.Format("SELECT * FROM Member WHERE Email = '" + txtEmail.Text + "' AND Password= '" + txtPassword.Text + "'");
        //    SqlCommand cmd = new SqlCommand(strSelect, conn);

        //    SqlDataReader reader;

        //    conn.Open();

        //    reader = cmd.ExecuteReader();

        //    if (reader.Read())
        //    {
        //        if (txtEmail.Text == "Admin2022")
        //        {
        //            Response.Redirect("~/AdminPage.aspx");
        //        }
        //        else
        //        {
        //            Response.Redirect("~/UserPage.aspx");
        //        }
        //    }
        //    else
        //    {
        //        LblMSG.Text = "Wrong username or password";
        //    }

        //}
    }
}
