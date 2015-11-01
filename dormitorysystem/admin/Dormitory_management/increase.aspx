<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Dormitory_management/Dormitory.master" AutoEventWireup="true" CodeFile="increase.aspx.cs" Inherits="admin_Dormitory_management_increase" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 491px">
        <asp:TextBox ID="TextBox4" runat="server" 
            style="z-index: 1; left: 152px; top: 220px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 88px; top: 281px; position: absolute" Text="查看已有数据" />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 78px; top: 221px; position: absolute" Text="是否住满"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 307px; top: 114px; position: absolute" Text="*"></asp:Label>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 310px; top: 163px; position: absolute; right: 682px" 
            Text="*"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" 
        
        
            style="z-index: 1; left: 568px; top: 14px; position: absolute; height: 129px; width: 355px">
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 82px; top: 117px; position: absolute" Text="楼名"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 82px; top: 163px; position: absolute; margin-top: 0px" 
        Text="寝室号"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 154px; top: 116px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 153px; top: 163px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 259px; top: 282px; position: absolute" Text="增加" />
</p>
</asp:Content>

