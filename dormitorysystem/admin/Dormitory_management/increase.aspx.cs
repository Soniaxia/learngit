using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Dormitory_management_increase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from dormitory_management";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "dormitory_management");
        GridView1.DataSource = ds;
        GridView1.DataBind();*/
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from dormitory_management";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "dormitory_management");

        DataRow dr = ds.Tables["dormitory_management"].NewRow();
        dr["楼名"] = TextBox1.Text.ToString();
        dr["寝室号"] = TextBox2.Text.ToString();
        dr["是否住满"] = TextBox4.Text.ToString();


        ds.Tables[0].Rows.Add(dr);

        DataView ssc = ds.Tables["dormitory_management"].DefaultView;
        ssc.Sort = "寝室号 asc";
        GridView1.DataSource =ssc;
        GridView1.DataBind();
        SqlCommandBuilder read = new SqlCommandBuilder(da);
        da.Update(ds, "dormitory_management");
}
protected void Button2_Click(object sender, EventArgs e)
{
    Class1 ad = new Class1();
    DataSet abc = ad.GetAll();


    GridView1.DataSource = abc;
    GridView1.DataBind();
}
}