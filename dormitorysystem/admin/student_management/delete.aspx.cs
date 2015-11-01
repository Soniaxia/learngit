using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_student_management_delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class2 ad = new Class2();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from student_management where 学号='" + TextBox1.Text + "'";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "student_management");

        ds.Tables[0].Rows[0].Delete();
        SqlCommandBuilder read = new SqlCommandBuilder(da);
        da.Update(ds, "student_management");


        SQL = "select * from student_management";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds2 = new DataSet();
        da.Fill(ds2, "student_management");

        GridView1.DataSource = ds2;
        GridView1.DataBind();
    }
}