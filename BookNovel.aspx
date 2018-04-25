<%@ Page Title="小说" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="BookNovel.aspx.cs" Inherits="MyBookStore.Novel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="height: 1056px; width: 1079px;">
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 65px; font-family: 华文楷体; font-size: large;" class="text-center"><strong>图书分类</strong></td>
            <td rowspan="5" style="width: 56px; text-align: center; font-family: 华文楷体; font-weight: bolder;" class="modal-sm">&nbsp;</td>
            <td rowspan="5" style="text-align: center; font-family: 华文楷体; font-weight: bolder;" colspan="3">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BookId" DataSourceID="LinqDataSource1" Height="384px" PageSize="1" Width="831px">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width: 100%">
                                    <tr>
                                        <td rowspan="6" style="width: 204px">
                                            <asp:Image ID="Image7" runat="server" Height="431px" ImageUrl='<%# Bind("Image") %>' Width="333px" ImageAlign="Middle" />
                                        </td>
                                        <td class="text-left" style="width: 40px">&nbsp;</td>
                                        <td class="text-left" style="width: 92px"><span style="font-size: 16px">书名：</span></td>
                                        <td>
                                            <asp:Label ID="lblName" runat="server" Text='<%# Bind("BookName") %>'></asp:Label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 40px">&nbsp;</td>
                                        <td class="text-left" style="width: 92px"><span style="font-size: 16px">作者：</span></td>
                                        <td>
                                            <asp:Label ID="lblAuthor" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 40px">&nbsp;</td>
                                        <td class="text-left" style="width: 92px"><span style="font-size: 16px">出版社：</span></td>
                                        <td>
                                            <asp:Label ID="lblPublisher" runat="server" Text='<%# Bind("Publisher") %>'></asp:Label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 40px; height: 89px">&nbsp;</td>
                                        <td class="text-left" style="width: 92px; height: 89px"><span style="font-size: 16px">描述：</span></td>
                                        <td style="height: 89px">
                                            <asp:Label ID="lblDescn" runat="server" Text='<%# Bind("Descn") %>'></asp:Label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 40px">&nbsp;</td>
                                        <td class="text-left" style="width: 92px"><span style="font-size: 16px">价格：</span></td>
                                        <td>
                                            <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left" style="width: 40px">&nbsp;</td>
                                        <td class="text-left" style="width: 92px"><span style="font-size: 16px">库存</span></td>
                                        <td>
                                            <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty") %>'></asp:Label>
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:HyperLinkField HeaderText="放入购物车" Text="购买" DataNavigateUrlFields="BookId" DataNavigateUrlFormatString="~/ShopCart.aspx?BookId={0}" />
                    </Columns>
                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyBookStoreDataContext" EntityTypeName="" TableName="Book" Where="CategoryId == @CategoryId">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="1" Name="CategoryId" Type="Int32" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center"><a href="Novel.aspx" class="btn btn-primary" style="font-family: 华文楷体; font-size: 36px;text-align:center; font-style: normal; font-weight: bold;">小说</a></td>
        </tr>
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center"><a href="Tech.aspx" class="btn btn-primary" style="font-family: 华文楷体; font-size: 36px;text-align:center; font-style: normal; font-weight: bold;">科技</a></td>
        </tr>
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center"><a href="Life.aspx" class="btn btn-primary" style="font-family: 华文楷体; font-size: 36px;text-align:center; font-style: normal; font-weight: bold;">生活</a></td>
        </tr>
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center"><a href="#" class="btn btn-primary" style="font-family: 华文楷体; font-size: 36px;text-align:center; font-style: normal; font-weight: bold;">诗歌</a></td>
        </tr>
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center"><a href="#" class="btn btn-primary" style="font-family: 华文楷体; font-size: 36px;text-align:center; font-style: normal; font-weight: bold;">工具</a></td>
            <td rowspan="4" style="width: 56px" class="modal-sm">&nbsp;</td>
            <td style="width: 453px" class="text-center" rowspan="4">
                <br style="font-family: 华文楷体; font-weight: bolder" />
                <br />
                <strong>
                <br />
                <br />
                </strong>
                <br />
            </td>
            <td rowspan="4" style="width: 59px">&nbsp;</td>
            <td style="width: 453px" class="text-center" rowspan="4">
                <br style="font-family: 华文楷体; font-weight: bolder" />
                <br />
                <strong>
                <br />
                <br />
&nbsp;</strong><br />
            </td>
        </tr>
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center">&nbsp;</td>
            <td style="width: 56px" class="modal-sm">&nbsp;</td>
            <td style="width: 453px">&nbsp;</td>
            <td style="width: 59px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
