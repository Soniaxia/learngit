﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="admin_manage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 151px">
    
        <asp:LoginName ID="LoginName1" runat="server" FormatString="欢迎您，{0}!" 
            style="font-weight: 700; color: #FF0000; z-index: 1; left: 104px; top: 82px; position: absolute"/>
    
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 111px; top: 29px; position: absolute" Text="这是管理员页面。"></asp:Label>
    
    </div>
    </form>
</body>
</html>
