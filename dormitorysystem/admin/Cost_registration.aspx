<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Cost_registration.aspx.cs" Inherits="admin_Cost_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 35%; z-index: 1; left: 0px; top: 0px; position: absolute; height: 393px;">
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label2" runat="server" Text="寝室号"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label10" runat="server" Text="月份"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label3" runat="server" Text="度数"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label4" runat="server" Text="单价"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label5" runat="server" Text="总金额"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label6" runat="server" Text="是否交钱"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Button ID="Button1" runat="server" Text="计算总金额" onclick="Button1_Click1" />
            </td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="提交记录" 
                    style="height: 21px" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label7" runat="server" Text="输入编号"></asp:Label>
            </td>
            <td align="center" class="style2">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label8" runat="server" Text="输入字段"></asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label9" runat="server" Text="输入修改内容"></asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Button ID="Button3" runat="server" Text="显示所有数据" onclick="Button3_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button4" runat="server" Text="点击修改" onclick="Button4_Click" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 290px; top: 3px; position: absolute; height: 128px; width: 499px">
    </asp:GridView>
</asp:Content>

