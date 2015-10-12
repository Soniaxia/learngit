<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 315px">
    <form id="form1" runat="server">
    <div style="height: 305px; z-index: 1; left: 10px; top: 15px; position: absolute; width: 579px; background-color: #CCFF99">
    
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="z-index: 1; left: 55px; top: 34px; position: absolute">用户登陆</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
            style="z-index: 1; left: 165px; top: 34px; position: absolute">用户注册</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
            style="z-index: 1; left: 56px; top: 84px; position: absolute; height: 16px">学生入口</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
            style="z-index: 1; left: 55px; top: 128px; position: absolute; margin-bottom: 0px">教师入口</asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
            style="z-index: 1; left: 55px; top: 170px; position: absolute; height: 16px">管理员入口</asp:LinkButton>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 64px; top: 217px; position: absolute; font-weight: 700; color: #FF0000"></asp:Label>
    
    </div>
    </form>
</body>
</html>
