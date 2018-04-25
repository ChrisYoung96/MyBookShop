using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubmitCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookList.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MyBookStoreDataContext db = new MyBookStoreDataContext();
        //在AdminOrder表中添加一条订单
        AdminOrder order = new AdminOrder();
        //收货人、联系方式、收货地址从页面的TextBox控件中获得
        order.UserNmae = txtName.Text;
        order.Address = txtAddress.Text;
        order.Phone = txtPhone.Text;
        order.OrderDate = DateTime.Now;
        order.Status = "未审核";
        //插入实体order，提交更改后在AdminOrder表添加一条记录
        db.AdminOrder.InsertOnSubmit(order);
        db.SubmitChanges();
        //在OrderItem表中添加订单详细信息
        int id = order.OrderId;
        for(int i=0; i < Profile.Cart.BookName.Count; i++)
        {
            OrderItem orderItem = new OrderItem();
            orderItem.OrderId = id;
            orderItem.BookName = (string)Profile.Cart.BookName[i];
            orderItem.Price = (decimal)Profile.Cart.Price[i];
            orderItem.Qty = (int)Profile.Cart.Qty[i];
            orderItem.TotalPrice = (int)Profile.Cart.Qty[i] * (decimal)Profile.Cart.Price[i];
            db.OrderItem.InsertOnSubmit(orderItem);
            db.SubmitChanges();

            var book = (from c in db.Book
                        where c.BookId == (int)Profile.Cart.BookId[i]
                        select c).First();
            book.Qty -= orderItem.Qty;
            db.SubmitChanges();
        }
        //清空Profile.Cart中的对象
        Profile.Cart.BookId.Clear();
        Profile.Cart.BookName.Clear();
        Profile.Cart.Price.Clear();
        Profile.Cart.Qty.Clear();
        Profile.Cart.TotalPrice="";
        lblMsg.Text = "已经结算成功，谢谢光临";
    }
}