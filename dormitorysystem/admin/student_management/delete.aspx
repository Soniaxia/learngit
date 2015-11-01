<%@ Page Title="" Language="C#" MasterPageFile="~/admin/student_management/student_management.master" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="admin_student_management_delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 84px; top: 158px; position: absolute; font-weight: 700; font-size: large; font-family: 华文楷体" 
        Text="请输入学号"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 543px; top: 16px; position: absolute; height: 162px; width: 433px">
    </asp:GridView>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 144px; top: 201px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 288px; top: 240px; position: absolute; width: 49px" 
        Text="删除" />
</asp:Content>

