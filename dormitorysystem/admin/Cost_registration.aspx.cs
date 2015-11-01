using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Cost_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from Hydropower";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Hydropower");

        DataRow dr = ds.Tables["Hydropower"].NewRow();
        dr["寝室号"] = TextBox1.Text.ToString();
        dr["月份"] = TextBox9.Text.ToString();
        dr["度数"] = TextBox2.Text.ToString();
        dr["单价"] = TextBox3.Text.ToString();
        dr["总金额"] = TextBox4.Text.ToString();
        dr["是否交钱"] = TextBox5.Text.ToString();
        

        ds.Tables[0].Rows.Add(dr);
        SqlCommandBuilder read = new SqlCommandBuilder(da);
        da.Update(ds, "Hydropower");

        GridView1.DataSource = ds;
        GridView1.DataBind();
        
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        Double x1 = Convert.ToDouble(TextBox2.Text);
        Double x2 = Convert.ToDouble(TextBox3.Text);
        WebMUL.Service rum = new WebMUL.Service();
        Double x3 = rum.MUL(x1, x2);
        TextBox4.Text = x3.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        hydropower ad = new hydropower();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        Conn.Open();
        string SQL = "UPDATE Hydropower SET " + TextBox7.Text + "='" + TextBox8.Text + "' where 编号='" + TextBox6.Text + "'";
        SqlCommand cmd = new SqlCommand(SQL, Conn);
        cmd.ExecuteNonQuery();
        Conn.Close();

        hydropower ad = new hydropower();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();
    }
}