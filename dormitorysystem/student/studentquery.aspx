<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="studentquery.aspx.cs" Inherits="student_studentquery" %>



<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p style="height: 309px">
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 202px; top: 10px; position: absolute"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 13px; top: 13px; position: absolute" 
            Text="请输入寝室号"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 16px; top: 39px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 123px; top: 63px; position: absolute" Text="查询" 
            onclick="Button1_Click" />
        <asp:GridView ID="GridView1" runat="server" 
            
            style="z-index: 1; left: 204px; top: 45px; position: absolute; height: 115px; width: 580px">
        </asp:GridView>
    </p>

</asp:Content>




