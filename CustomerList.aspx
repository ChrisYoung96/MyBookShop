<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerList.aspx.cs" Inherits="CustomerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" Height="316px" HorizontalAlign="Center" style="margin-right: 0px; margin-bottom: 0px" Width="1113px">
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="订单编号" ReadOnly="True" SortExpression="OrderId">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="BookName" HeaderText="书名" ReadOnly="True" SortExpression="BookName">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="单价" ReadOnly="True" SortExpression="Price">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Qty" HeaderText="数量" ReadOnly="True" SortExpression="Qty">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalPrice" HeaderText="总价" ReadOnly="True" SortExpression="TotalPrice">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyBookStoreDataContext" EntityTypeName="" Select="new (OrderId, BookName, Price, Qty, TotalPrice)" TableName="OrderItem">
    </asp:LinqDataSource>
</p>
<p>
    <strong>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="LinqDataSource2" Height="229px" Width="1117px" style="font-size: large">
        <EditItemTemplate>
            OrderId:
            <asp:TextBox ID="OrderIdTextBox" runat="server" Text='<%# Bind("OrderId") %>' />
            <br />
            UserNmae:
            <asp:TextBox ID="UserNmaeTextBox" runat="server" Text='<%# Bind("UserNmae") %>' />
            <br />
            OrderDate:
            <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            OrderId:
            <asp:TextBox ID="OrderIdTextBox" runat="server" Text='<%# Bind("OrderId") %>' />
            <br />
            UserNmae:
            <asp:TextBox ID="UserNmaeTextBox" runat="server" Text='<%# Bind("UserNmae") %>' />
            <br />
            OrderDate:
            <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            姓名:
            <asp:Label ID="UserNmaeLabel" runat="server" Text='<%# Bind("UserNmae") %>' />
            <br />
            订单日期:
            <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Bind("OrderDate") %>' />
            <br />
            地址:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            联系方式:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
        </ItemTemplate>
    </asp:FormView>
    </strong>
    <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MyBookStoreDataContext" EntityTypeName="" Select="new (OrderId, UserNmae, OrderDate, Address, Phone)" TableName="AdminOrder">
    </asp:LinqDataSource>
</p>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

