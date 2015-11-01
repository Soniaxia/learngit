<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Expense_statistics.aspx.cs" Inherits="admin_Expense_statistics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" 
        style="width: 32%; z-index: 1; left: 7px; top: 9px; position: absolute; height: 112px;">
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" Text="请输入月份"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="查询当月所有寝室水电费" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 276px; top: 46px; position: absolute; height: 115px; width: 516px">
    </asp:GridView>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 277px; top: 16px; position: absolute"></asp:Label>
</asp:Content>

