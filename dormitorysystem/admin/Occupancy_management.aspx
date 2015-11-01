<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Occupancy_management.aspx.cs" Inherits="admin_Occupancy_management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 19px; top: 36px; position: absolute" 
        Text="学生入住情况" />
    <asp:GridView ID="GridView1" runat="server" 
        
        style="z-index: 1; left: 6px; top: 112px; position: absolute; height: 199px; width: 455px; margin-top: 0px;">
    </asp:GridView>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="z-index: 1; left: 19px; top: 67px; position: absolute" 
        Text="寝室入住情况" />
    <asp:GridView ID="GridView2" runat="server" 
        
        style="z-index: 1; left: 479px; top: 115px; position: absolute; height: 193px; width: 285px">
    </asp:GridView>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 334px; top: 36px; position: absolute; font-family: 楷体; font-weight: 700" 
        Text="输入学号"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="z-index: 1; left: 436px; top: 34px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 333px; top: 71px; position: absolute; font-weight: 700; font-family: 楷体" 
        Text="输入寝室号"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" 
        style="z-index: 1; left: 436px; top: 70px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        style="z-index: 1; left: 603px; top: 35px; position: absolute" Text="入住" />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        style="z-index: 1; left: 604px; top: 67px; position: absolute" Text="退出" />
</asp:Content>

