using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class client_product : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Admin\Downloads\MiniEco3\MiniEco3\dbMain.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
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
    protected void btncart_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            cn.Open();
            Button btn = (Button)sender;
            string formattedDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            cmd = new SqlCommand("insert into tblorder(order_date,uid,pid) values('" + formattedDate + "'," + Session["uid"] + "," + btn.CommandArgument + ")", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("order.aspx");
        }
    }
}