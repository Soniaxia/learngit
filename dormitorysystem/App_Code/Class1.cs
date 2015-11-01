using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

/// <summary>
///Class1 的摘要说明
/// </summary>
public class Class1
{
	public Class1()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public DataSet GetAll()
    {

        string qq = "Data Source=gz-20150728tajv\\sqlexpress;Initial Catalog=Student1;Integrated Security=True ";
        SqlConnection Conn = new SqlConnection(qq);
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from dormitory_management";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "dormitory_management");
        return ds;
    }
}