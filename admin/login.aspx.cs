using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Admin\Downloads\MiniEco3\MiniEco3\dbMain.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from tbladmin where emailid='" + txtEmail.Text + "' and password='" + txtPassword.Text + "'", cn);
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            Session["aid"] = dr["admin_id"].ToString();
            Session["email"] = dr["emailid"].ToString();
            Response.Redirect("Addprod.aspx");
        }
        else
        {
            lblmsg.Text = "Invalid Email or password";
        }
        cn.Close();
    }
}