using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class admin_orders : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from tblorder o,tblproduct p,tblusers u where o.pid=p.prod_id and o.uid=u.uid", cn);
        cmd.ExecuteNonQuery();
        adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cn.Close();
        rptrshow.DataSource = ds;
        rptrshow.DataBind();
    }
}