using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Profile;
using System.Data;

namespace MyBookStore
{
    public partial class ShopCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["BookId"] !=null)
                {
                    int id = int.Parse(Request.QueryString["BookId"]);
                    AddBook(id);  //调用自定义方法，向购物车添加指定商品编号的商品
                }
                Bind();    //调用自定义方法，显示购物车中的所有商品
            }

        }

        protected  void AddBook(int id)
        {
            //isExit表示商品是否已经在购物车中，是为1，否为0
            int isExit = 0;
            for(int j=0;j<Profile.Cart.BookName.Count; j++)
            {
                if (id == (int)Profile.Cart.BookId[j])
                {
                    //若同类商品已经存在于购物车，则将该商品的购买数量加1
                    int s = (int)Profile.Cart.Qty[j];
                    s++;
                    Profile.Cart.Qty[j] = s;
                    Profile.Save();
                    isExit = 1;
                }
            }
            if (isExit == 0)
            {
                //若购物车中无指定商品编号的商品，添加一个新商品到Profile.cart的个属性
                MyBookStoreDataContext db = new MyBookStoreDataContext();
                var book = (from p in db.Book
                            where p.BookId ==id
                            select p).First();
                Profile.Cart.Price.Add(book.Price);
                Profile.Cart.Qty.Add(1);
                Profile.Cart.BookId.Add(book.BookId);
                Profile.Cart.BookName.Add(book.BookName);
                Profile.Save();//保存到ASPNETDB数据库中
            }
        }

        protected void Bind()
        {
            //调用自定义方法计算总价
            Profile.Cart.TotalPrice = TotalPrice().ToString();
            lblTotalPrice.Text = Profile.Cart.TotalPrice;
            DataTable dt = new DataTable();  //建立数据表对象，并赋值
            dt.Columns.Add("BookId");
            dt.Columns.Add("BookName");
            dt.Columns.Add("Price");
            dt.Columns.Add("Qty");
            for(int i = 0; i < Profile.Cart.BookName.Count; i++)
            {
                //建立数据行对象
                DataRow row = dt.NewRow();
                row[0] = Profile.Cart.BookId[i];
                row[1] = Profile.Cart.BookName[i];
                row[2] = Profile.Cart.Price[i];
                row[3] = Profile.Cart.Qty[i];
                dt.Rows.Add(row);
            }
            GridView1.DataSource = dt;//绑定数据源
            GridView1.DataBind();
        }

        protected decimal TotalPrice() //自定义方法计算商品总价格
        {
            decimal sum = 0;
            for(int j = 0; j < Profile.Cart.BookName.Count; j++)
            {
                int qty = (int)Profile.Cart.Qty[j];
                decimal price = (decimal)Profile.Cart.Price[j];
                sum += qty * price;
            }
            return sum;
        }

        protected void Button1_Click(object sender, EventArgs e) 
        {
            int bookId = 0;
            for(int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chkBook = new CheckBox();
                chkBook = (CheckBox)GridView1.Rows[i].FindControl("chkBook");
                if (chkBook != null)
                {
                    if (chkBook.Checked)
                    {
                        bookId = int.Parse(GridView1.Rows[i].Cells[i].Text);
                        DeleteBook(bookId);
                    }
                }
            }
            Bind();
            }
        

        protected void DeleteBook(int id)
        {
            int j = 0;
            for(int i = 0; i < Profile.Cart.BookName.Count; i++)
            {
                if (id == (int)Profile.Cart.BookId[i])
                {
                    j = i;
                    break;
                }
            }
            Profile.Cart.Price.RemoveAt(j);
            Profile.Cart.BookId.RemoveAt(j);
            Profile.Cart.BookName.RemoveAt(j);
            Profile.Cart.Qty.RemoveAt(j);
            Profile.Save();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Profile.Cart.Qty.Clear();
            Profile.Cart.BookId.Clear();
            Profile.Cart.BookName.Clear();
            Profile.Cart.Price.Clear();
            Profile.Save();
            Response.Redirect("BookList.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            MyBookStoreDataContext db = new MyBookStoreDataContext();
            //循环利用FindControl()找到TextBox控件txtQty,然后判断其值是否为空，若非空
            //则在Book表中查询txtQty所在行商品编号确定的商品，从而比较txtQty中的输入值和库存量
            for(int i = 0; i < GridView1.Rows.Count; i++)
            {
                TextBox txtQty = new TextBox();
                txtQty = (TextBox)GridView1.Rows[i].FindControl("txtQty");
                if(txtQty != null)
                {
                    var book = (from p in db.Book
                                where p.BookId == int.Parse(GridView1.Rows[i].Cells[1].Text)
                                select p).First();
                    if (int.Parse(txtQty.Text) > book.Qty)
                    {
                        lblError.Text += "Erro:库存不足，商品名为" + GridView1.Rows[i].Cells[2].Text + "的商品数量为" + book.Qty.ToString() + "<br/>";
                    }
                    else
                    {
                        //调用自定义方法，改变存储在Profile中的购买数量
                        ChangeQty(int.Parse(GridView1.Rows[i].Cells[1].Text), int.Parse(txtQty.Text));
                    }
                }
            }
            Bind(); //调用自定义方法，显示购物车中的所有商品
        }

        //自定义方法，根据指定的商品编号，修改Profile中对应商品的购买数量
        protected void ChangeQty(int id, int qty)
        {
            for(int i = 0; i < Profile.Cart.BookName.Count; i++)
            {
                if (id==(int)Profile.Cart.BookId[i]){
                    Profile.Cart.Qty[i] = qty;
                    Profile.Save();
            }
            }
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubmitCart.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookList.aspx");
        }
    }
}