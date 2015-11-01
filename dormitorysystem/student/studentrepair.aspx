<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="studentrepair.aspx.cs" Inherits="student_studentrepair" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
                    
    <table style="width: 39%; z-index: 1; left: 7px; top: 5px; position: absolute; height: 306px; margin-right: 0px;">
        <tr>
            <td align="center" style="width: 1234px">
                <asp:Label ID="Label2" runat="server" Text="寝室号"></asp:Label>
            </td>
            <td style="width: 321px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 241px">
                <asp:Label ID="Label7" runat="server" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 1234px">
                <asp:Label ID="Label3" runat="server" Text="学生姓名"></asp:Label>
            </td>
            <td style="width: 321px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width: 241px">
                <asp:Label ID="Label8" runat="server" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 1234px">
                <asp:Label ID="Label4" runat="server" Text="联系电话"></asp:Label>
            </td>
            <td style="width: 321px">
                <asp:TextBox ID="TextBox3" runat="server" Width="145px"></asp:TextBox>
            </td>
            <td style="width: 241px">
                <asp:Label ID="Label9" runat="server" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 1234px">
                <asp:Label ID="Label5" runat="server" Text="发生时间"></asp:Label>
            </td>
            <td style="width: 321px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="width: 241px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 1234px">
                <asp:Label ID="Label6" runat="server" Text="具体情况"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 1234px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登记报修" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 327px; top: 4px; position: absolute; height: 149px; width: 465px">
    </asp:GridView>
                    
</asp:Content>


