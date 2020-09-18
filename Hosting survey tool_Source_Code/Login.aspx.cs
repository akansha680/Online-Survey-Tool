using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string url = Request.Url.ToString();
        string[] split = url.Split('/');
        for (int i = 0; i < split.Length; i++)
        {
            if (split[i] == "Admin")
            {
                lblLogin.Text = "Admin Login";
            }
            else if (split[i] == "User")
            {
                lblLogin.Text = "User Login";
                lnkForgot.Visible = true;
                lnksignup.Visible = true;
            }
        }
    }
    // protected override void OnPreRender(EventArgs e)
    //{
    //    base.OnPreRender(e);
    //    string strDisAbleBackButton;
    //    strDisAbleBackButton = "<script language=javascript>\n";
    //    strDisAbleBackButton += "window.history.forward(1);\n";
    //    strDisAbleBackButton += "\n</script>";
    //    ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "clientScript", strDisAbleBackButton);
    // } 

    protected void LoginButton_Click(object sender, ImageClickEventArgs e)
    {
        Session["AdminId"] = null;
        Session["AdminName"] = null;
        Session["UserId"] = null;
        Session["LoginId"] = null;
        string str1 = null;
        string[] LoginId = null;
        try
        {
            if (txtLoginId.Text.Contains("/"))
            {
                string str = txtLoginId.Text;
                LoginId = str.Split('/');
                clsLogin.LoginId = LoginId[0].ToString();
                clsLogin.PassWord = LoginId[1].ToString(); 
                str1 = LoginId[0].ToString();
            }
            else
            {
                clsLogin.LoginId = txtLoginId.Text.Trim();
                clsLogin.PassWord = txtPassWord.Text.Trim();
                str1 = txtLoginId.Text.Trim();
            }
            
            int id;
            string Role = clsLogin.GetUserLogin(out id);

            if (Role == "NoUser")
                lblMsg.Text = "User Name and PassWord Mismatch....Try again.";
            else
            {
                if (Role.ToLower() == "admin")
                {
                    Session["AdminId"] = id;
                    Session["AdminName"] = str1;
                    FormsAuthentication.RedirectFromLoginPage("Admin",false);
                }
                else if (Role.ToLower() == "user")
                {
                    Session["UserId"] = id; 
                    Session["LoginId"] = str1;
                    FormsAuthentication.RedirectFromLoginPage("User",false);
                }
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }

    }
}
