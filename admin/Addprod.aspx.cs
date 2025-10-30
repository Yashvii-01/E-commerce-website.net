using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class admin_Addprod : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Admin\Downloads\MiniEco3\MiniEco3\dbMain.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        fillrptr();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        cn.Open();
        fuImage.SaveAs(Server.MapPath("../Assests/Images/")+Path.GetFileName(fuImage.FileName));
        cmd=new SqlCommand("insert into tblproduct values('"+txtProductName.Text+"','"+txtPrice.Text+"','"+fuImage.FileName+"','"+txtDescription.Text+"')",cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        txtProductName.Text = "";
        txtPrice.Text = "";
        txtDescription.Text = "";
        fillrptr();
       
    }
    void fillrptr()
    {
        ds.Clear();
        cn.Open();
        cmd = new SqlCommand("select * from tblproduct", cn);
        cmd.ExecuteNonQuery();
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        rptrshow.DataSource = ds;
        rptrshow.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from tblproduct where prod_id="+txtpid.Text+"", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        txtpid.Text = "";
        fillrptr();
    }
    protected void btnupd_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("update tblproduct set pname='"+txtProductName.Text+"', price='"+txtPrice.Text+"',pdesc='"+txtDescription.Text+"' where prod_id="+txtpid.Text+"", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        txtpid.Text = "";
        txtDescription.Text = "";
        txtPrice.Text = "";
        txtProductName.Text = "";
        fillrptr();
    }
}