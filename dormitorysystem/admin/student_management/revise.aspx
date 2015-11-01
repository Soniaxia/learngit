<%@ Page Title="" Language="C#" MasterPageFile="~/admin/student_management/student_management.master" AutoEventWireup="true" CodeFile="revise.aspx.cs" Inherits="admin_student_management_revise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 73px; top: 125px; position: absolute" Text="输入学号"></asp:Label>
    <asp:Label ID="Label3" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 73px; top: 165px; position: absolute; margin-bottom: 150px" 
        Text="输入字段"></asp:Label>
    <asp:Label ID="Label4" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 75px; top: 204px; position: absolute" Text="输入修改内容"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 181px; top: 121px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 182px; top: 159px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="z-index: 1; left: 180px; top: 202px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 290px; top: 248px; position: absolute; font-size: large; width: 95px; font-family: 楷体" 
        Text="点击修改" />
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 529px; top: 10px; position: absolute; height: 174px; width: 461px">
    </asp:GridView>
</asp:Content>

