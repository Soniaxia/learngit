using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student_studentpay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        Conn.Open();
        string SQL = "UPDATE Hydropower SET 是否交钱='是' where 编号='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(SQL, Conn);
        cmd.ExecuteNonQuery();

        SqlDataAdapter da = new SqlDataAdapter();
        string SQL1 = "select * from Hydropower where 编号='" + TextBox1.Text + "'";
        da.SelectCommand = new SqlCommand(SQL1, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Hydropower");

        DataView ssc = ds.Tables["Hydropower"].DefaultView;
        string x1 = TextBox1.Text.ToString();
        int x2 = Convert.ToInt16(x1);
        ssc.RowFilter = "编号 =" + x2;

        GridView1.DataSource = ssc;
        GridView1.DataBind();
        Conn.Close();

        TextBox1.Text = "";
    }
}