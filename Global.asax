<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite2" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Web.Security" %>
<%@ Import Namespace="System.Web.SessionState" %>
<%@ Import Namespace="System.Data.Entity" %>




<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);

        RoleActions roleActions = new RoleActions();
          roleActions.AddUserAndRole();
    }

</script>
