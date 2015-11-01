<%@ Page Title="" Language="C#" MasterPageFile="~/admin/student_management/student_management.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="admin_student_management_query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" 
        
        style="z-index: 1; left: 74px; top: 160px; position: absolute; font-family: 楷体; font-size: large;" 
        Text="请输入姓名" Font-Underline="False"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 124px; top: 189px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 279px; top: 221px; position: absolute; height: 27px; width: 64px; font-family: 楷体; font-size: large" 
        Text="查询" />
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 547px; top: 11px; position: absolute; height: 172px; width: 423px">
    </asp:GridView>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 105px; top: 223px; position: absolute; font-weight: 700; color: #FF0000"></asp:Label>
</asp:Content>

