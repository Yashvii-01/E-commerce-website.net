using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class client_reg : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Admin\Downloads\MiniEco3\MiniEco3\dbMain.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        
        cn.Open();
        string gen="";
        if (rbtnmale.Checked)
        {
            gen = "Male";
        }
        else {
            gen = "female";
        }
        fuProfile.SaveAs(Server.MapPath("../Assests/Images/")+Path.GetFileName(fuProfile.FileName));
        cmd = new SqlCommand("insert into tblusers values('"+txtUname.Text+"','"+txtPassword.Text+"','"+txtEmail.Text+"','"+fuProfile.FileName+"','"+gen+"','"+ddlCity.Text+"')",cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("login.aspx");

    }
}