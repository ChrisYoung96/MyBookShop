<%@ Page Title="管理图书" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="MyBookStore.BookDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1><%: Title %>.</h1>
    <p>

    </p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CssClass="table-bordered" DataKeyNames="BookId" DataSourceID="LinqDataSourceBook" Height="592px" Width="774px" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-top: 0px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="X-Large" HorizontalAlign="Center" BackColor="#D1DDF1" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="BookId" HeaderText="图书编号" InsertVisible="False" ReadOnly="True" SortExpression="BookId" />
            <asp:TemplateField HeaderText="种类编号" SortExpression="CategoryId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                    <br />
                    <asp:DropDownList ID="ddlCategoryId" runat="server" DataSourceID="LinqDataSourceCategory" DataTextField="Name" DataValueField="CategoryId">
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                    <br />
                    <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="LinqDataSourceCategory" DataTextField="Name" DataValueField="CategoryId">
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="BookName" HeaderText="书名" SortExpression="BookName" />
            <asp:BoundField DataField="Author" HeaderText="作者" SortExpression="Author" />
            <asp:BoundField DataField="Publisher" HeaderText="出版社" SortExpression="Publisher" />
            <asp:BoundField DataField="Descn" HeaderText="简介" SortExpression="Descn" />
            <asp:BoundField DataField="Price" HeaderText="价格" SortExpression="Price" />
            <asp:BoundField DataField="Image" HeaderText="图片路径" SortExpression="Image" />
            <asp:BoundField DataField="Qty" HeaderText="数量" SortExpression="Qty" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle Font-Size="Large" HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White" />
        <RowStyle Font-Names="华文楷体" Font-Size="Large" HorizontalAlign="Center" BackColor="#EFF3FB" />
    </asp:DetailsView>
</p>
<p>
    <asp:LinqDataSource ID="LinqDataSourceBook" runat="server" ContextTypeName="MyBookStoreDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Book">
    </asp:LinqDataSource>
</p>
<p>
    <asp:LinqDataSource ID="LinqDataSourceCategory" runat="server" ContextTypeName="MyBookStoreDataContext" EntityTypeName="" Select="new (CategoryId, Name)" TableName="Category">
    </asp:LinqDataSource>
</p>
<p class="text-right">
    <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Height="42px" OnClick="Button1_Click" Text="查找" Width="114px" />
</p>
<p>
</p>
</asp:Content>
