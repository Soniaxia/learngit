﻿using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Dormitory_management_getall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 ad = new Class1();
        DataSet abc = ad.GetAll();


        GridView1.DataSource = abc;
        GridView1.DataBind();
    }
}