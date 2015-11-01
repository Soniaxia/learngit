<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Dormitory_management/Dormitory.master" AutoEventWireup="true" CodeFile="getall.aspx.cs" Inherits="admin_Dormitory_management_getall" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" 
    
        style="z-index: 1; left: 560px; top: 19px; position: absolute; height: 181px; width: 330px">
</asp:GridView>
<asp:Button ID="Button1" runat="server" 
    style="z-index: 1; left: 153px; top: 272px; position: absolute; font-size: large; font-family: 华文楷体; font-weight: 700" 
    Text="获取所有数据" onclick="Button1_Click" />
</asp:Content>

