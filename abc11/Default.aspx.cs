using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int x1 = Convert.ToInt16(TextBox1.Text);
        int x2 = Convert.ToInt16(TextBox2.Text);
        WebMUL.Service rum = new WebMUL.Service();
        int x3 = rum.MUL(x1, x2);
        TextBox3.Text = x3.ToString();
    }
}