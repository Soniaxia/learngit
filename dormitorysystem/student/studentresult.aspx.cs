﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class student_studentresult : System.Web.UI.Page
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
        string SQL = "select * from repair where 寝室号='" + TextBox1.Text + "'";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "repair");


        DataView ssc = ds.Tables["repair"].DefaultView;
        string x1 = TextBox1.Text.ToString();
        string x2 = "'" + x1 + "%" + "'";
        ssc.RowFilter = "寝室号 like" + x2;

        if (da.SelectCommand.ExecuteScalar() == null)
        {
            Label3.Text = "错误";
        }
        else
        {
            Label3.Text = "正确";
            GridView1.DataSource = ssc;
            GridView1.DataBind();
            Conn.Close();
        }
    }
}