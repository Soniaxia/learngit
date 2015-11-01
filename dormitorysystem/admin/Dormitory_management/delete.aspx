<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Dormitory_management/Dormitory.master" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="admin_Dormitory_management_delete" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" 
                
                style="z-index: 1; left: 84px; top: 125px; position: absolute; font-family: 华文楷体; font-weight: 700;" 
                Text="输入寝室编号"></asp:Label>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                style="z-index: 1; left: 184px; top: 197px; position: absolute" 
                Text="删除" />
            <asp:TextBox ID="TextBox1" runat="server" 
                style="z-index: 1; left: 83px; top: 165px; position: absolute"></asp:TextBox>
            
<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" 
                
                
                style="z-index: 1; left: 565px; top: 10px; position: absolute; height: 153px; width: 327px">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
 
        </ContentTemplate>
               </asp:UpdatePanel>

</asp:Content>

