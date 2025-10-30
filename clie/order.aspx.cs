using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class client_order : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Admin\Downloads\MiniEco3\MiniEco3\dbMain.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter adp = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillrptr();
        }
        
    }
    void fillrptr()
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else { 
            ds.Clear();
            cn.Open();
            cmd = new SqlCommand("select o.order_id,o.order_date,p.pname,p.price from tblorder o,tblproduct p,tblusers u where o.pid=p.prod_id and o.uid=u.uid and o.uid=" + Session["uid"], cn);
            cmd.ExecuteNonQuery();
            adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            cn.Close();
            grdshow.DataSource = ds;
            grdshow.DataBind();
        }

    }
    protected void grdshow_RowDeleting(object sender, GridViewDeleteEventArgs e)
    { 
        cn.Open();
        cmd = new SqlCommand("delete from tblorder where order_id= " + grdshow.DataKeys[e.RowIndex].Value + "", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        fillrptr();
    }
}