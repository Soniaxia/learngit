using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class student_studentrepair : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from repair";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "repair");

        DataRow dr = ds.Tables["repair"].NewRow();
        dr["寝室号"] = TextBox1.Text.ToString();
        dr["学生姓名"] = TextBox2.Text.ToString();
        dr["联系电话"] = TextBox3.Text.ToString();
        dr["发生时间"] = TextBox4.Text.ToString();
        dr["具体情况"] = TextBox5.Text.ToString();


        ds.Tables[0].Rows.Add(dr);

        DataView ssc = ds.Tables["repair"].DefaultView;
        ssc.Sort = "编号 asc";
        GridView1.DataSource = ssc;
        GridView1.DataBind();
        SqlCommandBuilder read = new SqlCommandBuilder(da);
        da.Update(ds, "repair");
    }
}