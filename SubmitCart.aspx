<%@ Page  Title="填写订单" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="SubmitCart.aspx.cs" Inherits="SubmitCart" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1><%: Title %>.</h1>
  
    
    <p>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
    </p>
     <table style="width: 100%; height: 252px;">
         <tr>
             <td style="height: 19px">&nbsp;</td>
             <td style="height: 19px">&nbsp;</td>
             <td colspan="6" style="height: 19px"><strong><span style="font-size: large">收货人：</span></strong></td>
             <td style="height: 19px">&nbsp;</td>
             <td style="height: 19px">&nbsp;</td>
         </tr>
         <tr>
             <td style="height: 19px">&nbsp;</td>
             <td style="height: 19px">&nbsp;</td>
             <td colspan="6" style="height: 19px"><asp:TextBox ID="txtName" runat="server" CssClass="form-control" Height="38px" Width="950px"></asp:TextBox></td>
             <td style="height: 19px">&nbsp;</td>
             <td style="height: 19px">&nbsp;</td>
         </tr>
         <tr>
             <td style="height: 19px">&nbsp;</td>
             <td style="height: 19px">&nbsp;</td>
             <td colspan="6" style="height: 19px">&nbsp;</td>
             <td style="height: 19px">&nbsp;</td>
             <td style="height: 19px">&nbsp;</td>
         </tr>
         <tr>
             <td style="height: 19px"></td>
             <td style="height: 19px"></td>
             <td colspan="6" style="height: 19px">&nbsp;<strong><span style="font-size: large">联系电话&nbsp;：</span></strong></td>
             <td style="height: 19px"></td>
             <td style="height: 19px"></td>
         </tr>
         <tr>
             <td style="height: 50px"></td>
             <td style="height: 50px"></td>
             <td colspan="6" style="height: 50px"><asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Height="38px" Width="950px"></asp:TextBox></td>
             <td style="height: 50px"></td>
             <td style="height: 50px"></td>
         </tr>
         <tr>
             <td style="height: 6px"></td>
             <td style="height: 6px"></td>
             <td colspan="6" style="height: 6px"></td>
             <td style="height: 6px"></td>
             <td style="height: 6px"></td>
         </tr>
         <tr>
             <td style="height: 21px"></td>
             <td style="height: 21px"></td>
             <td colspan="6" style="font-size: large; height: 21px"><strong>送货地址：</strong></td>
             <td style="height: 21px"></td>
             <td style="height: 21px"></td>
         </tr>
         <tr>
             <td style="height: 13px"></td>
             <td style="height: 13px"></td>
             <td colspan="6" style="height: 13px">
                 <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Height="130px" TextMode="MultiLine" Width="950px"></asp:TextBox>
             </td>
             <td style="height: 13px"></td>
             <td style="height: 13px"></td>
         </tr>
         <tr>
             <td style="height: 14px"></td>
             <td style="height: 14px"></td>
             <td style="height: 14px"></td>
             <td style="height: 14px"></td>
             <td style="height: 14px"></td>
             <td style="height: 14px"></td>
             <td style="height: 14px"></td>
             <td style="height: 14px"></td>
             <td style="height: 14px"></td>
             <td style="height: 14px"></td>
         </tr>
         <tr>
             <td class="text-center" colspan="10" style="height: 38px">
                 <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Height="32px" OnClick="Button1_Click" Text="继续购物" Width="106px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" CssClass="btn-primary" Height="32px" OnClick="Button2_Click" Text="提交" Width="106px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button3" runat="server" CssClass="btn-primary" Height="32px" OnClick="Button2_Click" PostBackUrl="~/CustomerList.aspx" Text="查看订单详情" Width="106px" />
             </td>
         </tr>
     </table>
    
</asp:Content>
