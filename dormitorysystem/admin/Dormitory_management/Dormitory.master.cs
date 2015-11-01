using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Dormitory_management_Dormitory : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Dormitory_management/getall.aspx");
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Dormitory_management/increase.aspx");
    }
    protected void LinkButton3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Dormitory_management/query.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Dormitory_management/revise.aspx");
    }
    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Dormitory_management/delete.aspx");
    }
    protected void LinkButton6_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/admindefault.aspx");
    }
}
