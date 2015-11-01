<%@ Page Title="" Language="C#" MasterPageFile="~/admin/student_management/student_management.master" AutoEventWireup="true" CodeFile="increase.aspx.cs" Inherits="admin_student_management_increase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 72px; top: 111px; position: absolute; font-family: 楷体; font-size: large" 
        Text="学号"></asp:Label>
    <asp:Label ID="Label3" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 72px; top: 138px; position: absolute; font-size: large; font-family: 楷体" 
        Text="姓名"></asp:Label>
    <asp:Label ID="Label4" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 72px; top: 166px; position: absolute; font-size: large; font-family: 楷体" 
        Text="性别"></asp:Label>
    <asp:Label ID="Label5" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 72px; top: 195px; position: absolute; font-size: large; font-family: 楷体" 
        Text="学院"></asp:Label>
    <asp:Label ID="Label6" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 72px; top: 223px; position: absolute; font-size: large; font-family: 楷体" 
        Text="专业班级"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 150px; top: 109px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 150px; top: 138px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="z-index: 1; left: 150px; top: 169px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" 
        style="z-index: 1; left: 150px; top: 196px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server" 
        style="z-index: 1; left: 150px; top: 224px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
        style="z-index: 1; left: 297px; top: 308px; position: absolute; font-family: 楷体; width: 51px; height: 18px;" 
        Text="增加" />
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 508px; top: 10px; position: absolute; height: 115px; width: 482px">
    </asp:GridView>
    <asp:Label ID="Label7" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 72px; top: 284px; position: absolute; font-size: large; font-family: 楷体; height: 18px;" 
        Text="是否入住"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" 
        style="z-index: 1; left: 150px; top: 280px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Font-Underline="False" 
        style="z-index: 1; left: 75px; top: 254px; position: absolute; font-family: 楷体; font-size: large" 
        Text="寝室号"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server" 
        style="z-index: 1; left: 149px; top: 253px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="z-index: 1; left: 153px; top: 307px; position: absolute; font-family: 楷体" 
        Text="查看已有数据" />
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 303px; top: 109px; position: absolute" Text="*" 
        Font-Underline="False"></asp:Label>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 303px; top: 138px; position: absolute" Text="*" 
        Font-Underline="False"></asp:Label>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 303px; top: 171px; position: absolute" Text="*" 
        Font-Underline="False"></asp:Label>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 303px; top: 199px; position: absolute" Text="*" 
        Font-Underline="False"></asp:Label>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 303px; top: 225px; position: absolute" Text="*" 
        Font-Underline="False"></asp:Label>
</asp:Content>

