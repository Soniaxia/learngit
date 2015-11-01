<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admindefault.aspx.cs" Inherits="admin_admindefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:LoginName ID="LoginName1" runat="server" FormatString="欢迎您，{0}!" 
        
    
    style="z-index: 1; left: 248px; top: 147px; position: absolute; font-weight: 700; color: #003399; font-size: xx-large; font-family: 楷体; margin-top: 15px; height: 37px; width: 295px;" />
    <asp:Image ID="Image2" runat="server" Height="395px" ImageUrl="~/image/6.jpg" 
        Width="800px" />
</asp:Content>


