 using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using WebSite2;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        //建立用户管理对象
        var manager = new UserManager();
        //建立用户对象，并初始化用户名属性
        var user = new ApplicationUser() { UserName = UserName.Text };
        //调用UserManager的Create()方法创建用户，使用户名和密码关联，并将结果返回给result
        IdentityResult result = manager.Create(user, Password.Text);
        //如果创建并关联成功
        if (result.Succeeded)
        {
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
    }
}