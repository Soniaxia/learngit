<%@ Page Language="C#" AutoEventWireup="true" CodeFile="account.aspx.cs" Inherits="student_account" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 142px">
    
        <asp:LoginName ID="LoginName1" runat="server" FormatString="欢迎您，{0}!" 
            style="z-index: 1; left: 93px; top: 80px; position: absolute; color: #FF0000; font-weight: 700"/>
    
        <asp:Label ID="Label1" runat="server" Text="这是学生页面。" 
            style="z-index: 1; left: 100px; top: 22px; position: absolute"></asp:Label>
    
    </div>
    </form>
</body>
</html>
