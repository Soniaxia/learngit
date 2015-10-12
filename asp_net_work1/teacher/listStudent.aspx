<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listStudent.aspx.cs" Inherits="teacher_listStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 147px">
    
        <asp:LoginName ID="LoginName1" runat="server" FormatString="欢迎您，{0}!" 
            style="font-weight: 700; color: #FF0000; z-index: 1; left: 120px; top: 99px; position: absolute"/>
    
        <asp:Label ID="Label1" runat="server" Text="这是教师页面。" 
            style="z-index: 1; left: 128px; top: 40px; position: absolute"></asp:Label>
    
    </div>
    </form>
</body>
</html>
