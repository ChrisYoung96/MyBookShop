<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="BookList.aspx.cs" Inherits="MyBookStore.BookList" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font-family: 华文楷体" >

        <table class="nav-justified" style="height: 1056px; width: 1079px;">
            <tr>
                <td style="width: 173px; background-color: #FFFFFF; height: 132px;" class="text-center"><a href="BookNovel.aspx" class="btn btn-primary" style="font-family: 华文楷体; font-size: 36px;text-align:center; font-style: normal; font-weight: bold;">小说</a></td>
                <td rowspan="4" style="width: 56px; text-align: center; font-family: 华文楷体; font-weight: bolder;" class="modal-sm">
                    &nbsp;</td>
                <td rowspan="4" style="width: 453px; text-align: center; font-family: 华文楷体; font-weight: bolder;">
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="337px" ImageUrl="~/Novel/长安十二时辰.png" Width="288px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" style="font-size: large" Text="书名：长安十二时辰（上下册）"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" style="font-size: large" Text="作者：马伯庸"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" style="font-size: large" Text="价格：53.90"></asp:Label>
                    <br />
                </td>
                <td rowspan="4" style="width: 59px; text-align: center; font-family: 华文楷体; font-weight: bolder;">
                    &nbsp;</td>
                <td style="width: 453px" class="text-center" rowspan="4">
                    <br style="font-family: 华文楷体; font-weight: bolder" />
                    <asp:Image ID="Image4" runat="server" Height="337px" ImageUrl="~/Novel/流浪苍穹.png" Width="288px" />
                    <br />
                    <strong>
                    <asp:Label ID="Label4" runat="server" style="font-size: large" Text="书名：流浪苍穹"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" style="font-size: large" Text="作者：郝景芳"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" style="font-size: large" Text="价格：27.90"></asp:Label>
                    </strong>
                    <br />
                    </td>
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
                    <asp:Image ID="Image5" runat="server" Height="337px" ImageUrl="~/Novel/文具圣经.png" Width="288px" />
                    <br />
                    <strong>
                    <asp:Label ID="Label7" runat="server" style="font-size: large" Text="书名：文具圣经"></asp:Label>
                    <br />
                    <asp:Label ID="Label8" runat="server" style="font-size: large" Text="作者：La Vie编辑部"></asp:Label>
                    <br />
                    <asp:Label ID="Label9" runat="server" style="font-size: large" Text="价格：48.60"></asp:Label>
                    </strong>
                    <br />
                    </td>
                <td rowspan="4" style="width: 59px">&nbsp;</td>
                <td style="width: 453px" class="text-center" rowspan="4">
                    <br style="font-family: 华文楷体; font-weight: bolder" />
                    <asp:Image ID="Image6" runat="server" Height="337px" ImageUrl="~/Novel/Java.png" Width="288px" />
                    <br />
                    <strong>
                    <asp:Label ID="Label10" runat="server" style="font-size: large" Text="书名：Java从入门到精通（第4版）"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" style="font-size: large" Text="作者：明日科技"></asp:Label>
                    <br />
                    <asp:Label ID="Label12" runat="server" style="font-size: large" Text="价格：55.00"></asp:Label>
                    </strong>
                    <br />
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
                <td style="width: 56px" class="modal-sm">
                    &nbsp;</td>
                <td style="width: 453px">
                    &nbsp;</td>
                <td style="width: 59px">
                    &nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
