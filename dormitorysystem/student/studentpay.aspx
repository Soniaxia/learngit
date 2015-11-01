<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="studentpay.aspx.cs" Inherits="student_studentpay" %>



<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 10px; top: 42px; position: absolute" 
        Text="请输入已缴纳费用的水电费编号"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 14px; top: 80px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 175px; top: 80px; position: absolute" Text="已缴纳" />
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 258px; top: 7px; position: absolute; height: 175px; width: 530px">
    </asp:GridView>
</asp:Content>




