using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS.NET_4._0
{
    public partial class Librarian : System.Web.UI.Page
    {
        static string mode;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["lmsdb"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                mode = Request.QueryString["mode"].ToString();
                if (mode == "addbook")
                {
                    divwlcm.Style.Add("display", "none");
                    divaddfclt.Style.Add("display", "none");
                    divaddstd.Style.Add("display", "none");
                    divsrcstd.Style.Add("display", "none");
                    divsrcbook.Style.Add("display", "none");
                    divaddbook.Style.Add("display", "block");
                }
                if (mode == "addstudent")
                {
                    divwlcm.Style.Add("display", "none");
                    divaddfclt.Style.Add("display", "none");
                    divaddstd.Style.Add("display", "block");
                    divsrcstd.Style.Add("display", "none");
                    divsrcbook.Style.Add("display", "none");
                    divaddbook.Style.Add("display", "none");
                }
                if (mode == "addfaculty")
                {
                    divwlcm.Style.Add("display", "none");
                    divaddfclt.Style.Add("display", "block");
                    divaddstd.Style.Add("display", "none");
                    divsrcstd.Style.Add("display", "none");
                    divsrcbook.Style.Add("display", "none");
                    divaddbook.Style.Add("display", "none");
                }
                if (mode == "searchbook")
                {
                    divwlcm.Style.Add("display", "none");
                    divaddfclt.Style.Add("display", "none");
                    divaddstd.Style.Add("display", "none");
                    divsrcstd.Style.Add("display", "none");
                    divsrcbook.Style.Add("display", "block");
                    divaddbook.Style.Add("display", "none");
                }
                if (mode == "searchstudent")
                {
                    divwlcm.Style.Add("display", "none");
                    divaddfclt.Style.Add("display", "none");
                    divaddstd.Style.Add("display", "none");
                    divsrcstd.Style.Add("display", "block");
                    divsrcbook.Style.Add("display", "none");
                    divaddbook.Style.Add("display", "none");
                }
            }
            catch (Exception ex)
            {
            }
        }

        protected void btnsrcstd_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Insert into Book values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
            cmd.ExecuteNonQuery();
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Insert into Accounts(id, pass, roll, name, course, branch, type) values('" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "', '"+"student"+"')", con);
            cmd.ExecuteNonQuery();
            TextBox10.Text = TextBox11.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = TextBox9.Text = "";
            con.Close();
        }
    }
}