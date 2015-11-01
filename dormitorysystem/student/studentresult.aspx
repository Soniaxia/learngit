<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="studentresult.aspx.cs" Inherits="student_studentresult" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 24px; top: 36px; position: absolute" Text="输入寝室号"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 25px; top: 73px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 108px; top: 104px; position: absolute" Text="查询" />
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 221px; top: 14px; position: absolute"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 224px; top: 44px; position: absolute; height: 137px; width: 555px">
    </asp:GridView>
</asp:Content>


