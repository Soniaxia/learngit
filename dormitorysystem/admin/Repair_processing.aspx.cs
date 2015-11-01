using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class admin_Repair_processing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        Conn.Open();
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from repair where 是否处理='未处理'";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "repair");


        DataView ssc = ds.Tables["repair"].DefaultView;

        string x1 = "未处理";
        string x2 = "'" + x1 + "%" + "'";
        ssc.RowFilter = "是否处理 like" + x2;
        if (da.SelectCommand.ExecuteScalar() == null)
        {
            Label3.Text = "输入错误";
        }
        else
        {
            Label3.Text = "";
            GridView1.DataSource = ssc;
            GridView1.DataBind();
            Conn.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        Conn.Open();
        string SQL = "UPDATE repair SET 是否处理='已处理' where 编号='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(SQL, Conn);
        cmd.ExecuteNonQuery();
        Conn.Close();

        repair ad = new repair();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();

        TextBox1.Text = "";
    }
}