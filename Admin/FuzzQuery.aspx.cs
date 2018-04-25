using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FuzzQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        MyBookStoreDataContext db = new MyBookStoreDataContext();
        var result = from c in db.Book
                     where SqlMethods.Like(c.BookName, "%" + TextBox1.Text + "%")
                     select c;
        if (result.Count() != 0)
        {
            DetailsView1.DataSource = result;
            DetailsView1.DataBind();
        }
        else
        {
            Label2.Text = "没有满足条件的数据";
        }
    }



    
}