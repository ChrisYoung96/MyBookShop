using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using WebSite2;

public partial class Account_Login : Page
{
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // 验证用户名、密码
                var manager = new UserManager();
                ApplicationUser user = manager.Find(UserName.Text, Password.Text); 
            //通过UserManager对象找到数据库中对应的用户名和密码
                if (user != null)//如果找到用户
                {
                    IdentityHelper.SignIn(manager, user, RememberMe.Checked);//登录
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);//重定向到首页
                }
                else     //否则返回错误信息
                {
                    FailureText.Text = "用户名或密码错误.";
                    ErrorMessage.Visible = true;
                }
            }
        }
}