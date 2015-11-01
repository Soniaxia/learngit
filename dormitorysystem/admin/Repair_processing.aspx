<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Repair_processing.aspx.cs" Inherits="admin_Repair_processing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 43px; top: 80px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 41px; top: 50px; position: absolute" Text="请输入已处理的编号"></asp:Label>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 38px; top: 13px; position: absolute" 
        Text="查看所有未处理的报修" />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="z-index: 1; left: 169px; top: 114px; position: absolute" Text="已处理" />
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 303px; top: 9px; position: absolute; height: 150px; width: 481px">
    </asp:GridView>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 45px; top: 114px; position: absolute"></asp:Label>
</asp:Content>

