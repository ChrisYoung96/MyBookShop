using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using WebSite2;

/// <summary>
/// RoleActions 的摘要说明
/// </summary>
public class RoleActions
{
   
        public void AddUserAndRole()
    {
        // 连接数据库，建立两个身份变量.
        ApplicationDbContext context = new ApplicationDbContext();
        IdentityResult IdRoleResult;
        IdentityResult IdUserResult;


        // 建立角色存储对象. 
        // RoleStore类只允许存储IdentityRole对象.
        var roleStore = new RoleStore<IdentityRole>(context);

        // 建立一个角色管理对象
        // 以roleStore为参数，初始化RoleManager对象. 
        var roleMgr = new RoleManager<IdentityRole>(roleStore);

        //如果管理员角色不存在，创立管理员角色.
        if (!roleMgr.RoleExists("Admin"))
        {
            IdRoleResult = roleMgr.Create(new IdentityRole { Name = "Admin" });
        }

        // 建立一个UserManager对象，并用ApplicationUser和UserStore对其初始化
        var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
        var appUser = new ApplicationUser
        {
            UserName = "Admin",
            Email = "canEditUser@wingtiptoys.com"
        };
        IdUserResult = userMgr.Create(appUser, "123456");  //创建管理员角色和管理员账户

        // 如果管理员角色创立成功
        // 将管理员账号配置为管理员角色. 
        if (!userMgr.IsInRole(userMgr.FindByEmail("canEditUser@wingtiptoys.com").Id, "Admin"))
        {
            IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("canEditUser@wingtiptoys.com").Id, "Admin");
        }
    }

    
}


