using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Dormitory_management_delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 ad = new Class1();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from dormitory_management where 寝室编号='" + TextBox1.Text + "'";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "dormitory_management");

        ds.Tables[0].Rows[0].Delete();
        SqlCommandBuilder read = new SqlCommandBuilder(da);
        da.Update(ds, "dormitory_management");


        SQL = "select * from dormitory_management";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds2 = new DataSet();
        da.Fill(ds2, "dormitory_management");

        GridView1.DataSource = ds2;
        GridView1.DataBind();
    }
}