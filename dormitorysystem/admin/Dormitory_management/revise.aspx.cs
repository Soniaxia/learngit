using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Dormitory_management_revise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 ad = new Class1();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        Conn.Open();
        string SQL = "UPDATE dormitory_management SET " + TextBox2.Text + "='"+TextBox3.Text+"' where 寝室编号='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(SQL,Conn);
        cmd.ExecuteNonQuery();
        Conn.Close();

        Class1 ad = new Class1();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();
    }
   /* protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
       // InitPage(); //重新绑定GridView数据的函数
    }*/

}