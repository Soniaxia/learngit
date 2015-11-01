<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Dormitory_management/Dormitory.master" AutoEventWireup="true" CodeFile="revise.aspx.cs" Inherits="admin_Dormitory_management_revise" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 516px">
    <br />
        <asp:GridView ID="GridView1" runat="server" 
            
            
            style="z-index: 1; left: 569px; top: 15px; position: absolute; height: 191px; width: 318px"  >
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" 
            
            style="z-index: 1; left: 67px; top: 115px; position: absolute; right: 832px;" 
            Text="输入寝室编号"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 67px; top: 152px; position: absolute" Text="输入字段"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 66px; top: 192px; position: absolute" Text="输入修改内容"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 176px; top: 111px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 177px; top: 152px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" 
            style="z-index: 1; left: 177px; top: 189px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 262px; top: 233px; position: absolute" Text="点击修改" />
</p>
</asp:Content>

