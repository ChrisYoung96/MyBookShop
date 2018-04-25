<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ShopCart.aspx.cs" Inherits="MyBookStore.ShopCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="311px" HorizontalAlign="Center" Width="975px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkBookId" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="BookId" HeaderText="商品ID" />
                <asp:BoundField DataField="BookName" HeaderText="商品名称" />
                <asp:BoundField DataField="Price" HeaderText="商品价格" />
                <asp:TemplateField HeaderText="购买数量">
                    <ItemTemplate>
                        <asp:TextBox ID="txtQty" runat="server" Text='<%#Bind("Qty") %>' CssClass="form-control" Height="29px" Width="527px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </p>
    <p>
        温馨提示：更改购买数量后，请单击“重新计算”按钮进行更新</p>
    <p class="text-center">
        <strong><span style="font-size: medium">总价：<asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
        </span>
        <asp:Button ID="Button1" runat="server" CssClass="btn-warning" Text="删除商品" OnClick="Button1_Click" style="font-size: medium" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="btn-warning" Text="清空购物车" OnClick="Button2_Click" style="font-size: medium" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" CssClass="btn-warning" Text="重新计算" OnClick="Button3_Click" style="font-size: medium" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" CssClass="btn-warning" Text="结算" OnClick="Button4_Click" style="font-size: medium" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" CssClass="btn-warning" Text="继续购物" OnClick="Button5_Click" style="font-size: medium" />
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
