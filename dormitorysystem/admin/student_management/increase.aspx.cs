using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_student_management_increase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from student_management";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "student_management");

        DataRow dr = ds.Tables["student_management"].NewRow();
        dr["学号"] = TextBox1.Text.ToString();
        dr["姓名"] = TextBox2.Text.ToString();
        dr["性别"] = TextBox3.Text.ToString();
        dr["学院"] = TextBox4.Text.ToString();
        dr["专业班级"] = TextBox5.Text.ToString();
        dr["寝室号"] = TextBox7.Text.ToString();
        dr["是否入住"] = TextBox6.Text.ToString();


        ds.Tables[0].Rows.Add(dr);

        DataView ssc = ds.Tables["student_management"].DefaultView;
        ssc.Sort = "学号 asc";
        GridView1.DataSource = ssc;
        GridView1.DataBind();
        SqlCommandBuilder read = new SqlCommandBuilder(da);
        da.Update(ds, "student_management");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class2 ad = new Class2();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();
    }
}