<%@ Page Title="管理订单" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   <h1><%: Title %>.</h1>

     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ItemId" DataSourceID="LinqDataSource1" Height="403px" Width="1182px" HorizontalAlign="Center">
    <Columns>
        <asp:BoundField DataField="OrderId" HeaderText="订单编号" SortExpression="OrderId" >
        <HeaderStyle Font-Bold="True" Font-Names="华文楷体" HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="BookName" HeaderText="商品名" SortExpression="BookName" >
        <HeaderStyle Font-Bold="True" Font-Names="华文楷体" HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="Price" HeaderText="价格" SortExpression="Price" >
        <HeaderStyle Font-Bold="True" Font-Names="华文楷体" HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="Qty" HeaderText="数量" SortExpression="Qty" >
        <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="TotalPrice" HeaderText="总价" SortExpression="TotalPrice" >
        <ItemStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
        <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:CommandField>
    </Columns>
</asp:GridView>
<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyBookStoreDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="OrderItem">
</asp:LinqDataSource>
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="LinqDataSource2" Height="403px" Width="1182px" HorizontalAlign="Center">
    <Columns>
        <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" InsertVisible="False" ReadOnly="True" >
            <ItemStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="UserNmae" HeaderText="UserNmae" SortExpression="UserNmae" >
            <ItemStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" >
            <ItemStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" >
            <ItemStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" >
            <ItemStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="Medium" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" >
            <ItemStyle Font-Bold="True" Font-Names="华文楷体" Font-Size="Medium" HorizontalAlign="Center" />
             </asp:BoundField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
        <ItemStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:CommandField>
    </Columns>
</asp:GridView>
<asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MyBookStoreDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="AdminOrder">
</asp:LinqDataSource>
</asp:Content>

