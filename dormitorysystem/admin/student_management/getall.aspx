<%@ Page Title="" Language="C#" MasterPageFile="~/admin/student_management/student_management.master" AutoEventWireup="true" CodeFile="getall.aspx.cs" Inherits="admin_student_management_getall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<asp:GridView ID="GridView1" runat="server" 
    
        style="z-index: 1; left: 532px; top: 7px; position: absolute; height: 186px; width: 455px">
</asp:GridView>
<br />
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
    style="font-size: large; font-family: 华文楷体; font-weight: 700; z-index: 1; left: 114px; top: 251px; position: absolute" 
    Text="获取所有数据" />
</asp:Content>

