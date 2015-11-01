using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string qq = "Data Source=.\\SQLEXPRESS;AttachDbFilename=\"E:\\大学学习\\ASP NET\\dormitorysystem\\App_Data\\ASPNETDB.MDF\";Integrated Security=True;User Instance=True ";
        SqlConnection Conn = new SqlConnection(qq);
        Conn.Open();
        SqlDataAdapter da = new SqlDataAdapter();
        string SQL = "select * from aspnet_Users where UserName='" + Login1.UserName + "'";
        da.SelectCommand = new SqlCommand(SQL, Conn);
        DataSet ds = new DataSet();
        da.Fill(ds, "aspnet_Users");


        DataView ssc = ds.Tables["aspnet_Users"].DefaultView;
        string x1 = Login1.UserName.ToString();
        string x2 = "'" + x1 + "%" + "'";
        ssc.RowFilter = "UserName like" + x2;

        if (da.SelectCommand.ExecuteScalar() == null)
        {
            Session["name"] = Login1.UserName;
            // Session["number"] = TextBox2.Text;
            //Response.Redirect("~/admin/admindefault.aspx");
        }
    }



      /*protected void LoginButton_Click(object sender, AuthenticateEventArgs e)//(object sender, AuthenticateEventArgs e)
      {
          string qq = "Data Source=.\\SQLEXPRESS;AttachDbFilename=\"E:\\大学学习\\ASP NET\\dormitorysystem\\App_Data\\ASPNETDB.MDF\";Integrated Security=True;User Instance=True ";
          SqlConnection Conn = new SqlConnection(qq);
          Conn.Open();
          SqlDataAdapter da = new SqlDataAdapter();
          string SQL = "select * from aspnet_Users where UserName='" + Login1.UserName + "'";
          da.SelectCommand = new SqlCommand(SQL, Conn);
          DataSet ds = new DataSet();
          da.Fill(ds, "aspnet_Users");


          DataView ssc = ds.Tables["aspnet_Users"].DefaultView;
          string x1 = Login1.UserName.ToString();
          string x2 = "'" + x1 + "%" + "'";
          ssc.RowFilter = "UserName like" + x2;

          if (da.SelectCommand.ExecuteScalar() == null)
          {
              Session["name"] = Login1.UserName;
              // Session["number"] = TextBox2.Text;
              Response.Redirect("~/admin/admindefault.aspx");
          }
      }*/
}