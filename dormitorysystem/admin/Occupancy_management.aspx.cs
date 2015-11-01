using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Occupancy_management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class2 ad = new Class2();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1 ad = new Class1();
        DataSet abc = ad.GetAll();


        GridView2.DataSource = abc;
        GridView2.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        Conn.Open();
        string SQL1 = "UPDATE student_management SET 寝室号='" + TextBox4.Text + "',是否入住='是' where 学号='" + TextBox3.Text + "'";
        string SQL2 = "UPDATE dormitory_management SET 是否住满='是' where 寝室号='"+TextBox4.Text+"'";
        string SQL3 = "UPDATE dormitory_management SET 是否住满='否' where 寝室号='" + TextBox4.Text + "'";
        string str = "select count(*) from student_management where 寝室号='" + TextBox4.Text + "'";
        
        SqlCommand cmd1 = new SqlCommand(SQL1, Conn);

        
        cmd1.ExecuteNonQuery();

        SqlCommand count = new SqlCommand(str, Conn);
        string num1 = (count.ExecuteScalar()).ToString();
        int number = Convert.ToInt16(num1);

        if (number == 4)
        {
            SqlCommand cmd2 = new SqlCommand(SQL2, Conn);
            cmd2.ExecuteNonQuery();
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand(SQL3, Conn);
            cmd2.ExecuteNonQuery();
        }

        Conn.Close();

        
       

        Class2 ad1 = new Class2();
        DataSet abc1 = ad1.GetAll();


        GridView1.DataSource = abc1;
        GridView1.DataBind();

        Class1 ad2 = new Class1();
        DataSet abc2 = ad2.GetAll();


        GridView2.DataSource = abc2;
        GridView2.DataBind();

        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        Conn.Open();
        string SQL1 = "UPDATE student_management SET 寝室号='',是否入住='' where 学号='" + TextBox3.Text + "'";
        string SQL2 = "UPDATE dormitory_management SET 是否住满='是' where 寝室号='" + TextBox4.Text + "'";
        string SQL3 = "UPDATE dormitory_management SET 是否住满='否' where 寝室号='" + TextBox4.Text + "'";
        string str = "select count(*) from student_management where 寝室号='" + TextBox4.Text + "'";

        SqlCommand cmd1 = new SqlCommand(SQL1, Conn);


        cmd1.ExecuteNonQuery();

        SqlCommand count = new SqlCommand(str, Conn);
        string num1 = (count.ExecuteScalar()).ToString();
        int number = Convert.ToInt16(num1);

        if (number == 4)
        {
            SqlCommand cmd2 = new SqlCommand(SQL2, Conn);
            cmd2.ExecuteNonQuery();
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand(SQL3, Conn);
            cmd2.ExecuteNonQuery();
        }

        Conn.Close();




        Class2 ad1 = new Class2();
        DataSet abc1 = ad1.GetAll();


        GridView1.DataSource = abc1;
        GridView1.DataBind();

        Class1 ad2 = new Class1();
        DataSet abc2 = ad2.GetAll();


        GridView2.DataSource = abc2;
        GridView2.DataBind();

        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}




