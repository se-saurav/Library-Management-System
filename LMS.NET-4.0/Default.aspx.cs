using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS.NET_4._0
{
    public partial class _Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["lmsdb"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            NavigationMenu.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("select * from Accounts where id = @id and pass = @pass", con);
                SqlParameter param1 = new SqlParameter("id", SqlDbType.VarChar);
                param1.Value = TextBox1.Text;
                cmd.Parameters.Add(param1);
                SqlParameter param2 = new SqlParameter("pass", SqlDbType.VarChar);
                param2.Value = TextBox2.Text;
                cmd.Parameters.Add(param2);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr.GetString(9) == "admin")
                        Response.Redirect("~/Librarian.aspx");
                    else
                        Response.Redirect("~/Student.aspx");
                }
                else
                    Response.Write("dfsf");
            }
            catch (Exception ex) { Response.Write(ex.Message); }
        }
    }
}
