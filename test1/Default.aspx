<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div style="height: 348px; width: 557px; z-index: 1; left: 263px; top: 29px; position: absolute">
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="width: 75px; z-index: 1; left: 101px; top: 63px; position: absolute; margin-top: 1px">登陆</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
            style="z-index: 1; left: 99px; top: 133px; position: absolute; margin-top: 0px">教师</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
            style="z-index: 1; left: 98px; top: 201px; position: absolute; height: 16px; margin-top: 0px">学生1</asp:LinkButton>
    </div>
    </form>
</body>
</html>
