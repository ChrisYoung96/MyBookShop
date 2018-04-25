<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FuzzQuery.aspx.cs" Inherits="FuzzQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 185px">&nbsp;</td>
            <td style="width: 134px">&nbsp;</td>
            <td style="width: 14px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 185px">&nbsp;</td>
            <td class="text-center" style="width: 134px">
                <asp:Label ID="Label1" runat="server" Text="输入图书名："></asp:Label>
            </td>
            <td style="width: 14px">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="453px">支持模糊查找</asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Height="53px" OnClick="Button1_Click" Text="查找" Width="113px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 185px">&nbsp;</td>
            <td style="width: 134px">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td style="width: 14px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="6">
                <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="411px" HorizontalAlign="Center" Width="513px" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                </asp:DetailsView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

