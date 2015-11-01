<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Dormitory_management/Dormitory.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="admin_Dormitory_management_query" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 509px">

        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 117px; top: 275px; position: absolute; font-weight: 700; color: #FF0000"></asp:Label>

    <br />
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 77px; top: 161px; position: absolute" Text="输入寝室号"></asp:Label>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 305px; top: 281px; position: absolute" Text="查询" />
    <asp:GridView ID="GridView1" runat="server" 
        
            style="z-index: 1; left: 548px; top: 17px; position: absolute; height: 197px; width: 344px; margin-top: 0px;">
    </asp:GridView>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 126px; top: 224px; position: absolute"></asp:TextBox>
</p>

</asp:Content>

