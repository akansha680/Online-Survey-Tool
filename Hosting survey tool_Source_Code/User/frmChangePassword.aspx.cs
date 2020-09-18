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

public partial class User_frmChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            clsPassWordManagement.UserName = txtUserName.Text.Trim();
            clsPassWordManagement.PassWord = txtPassword.Text.Trim();
            clsPassWordManagement.NewPassWord = txtNewPassword.Text.Trim();
            int Result = clsPassWordManagement.ChangePassword();
            if (Result == 1)
            {
                Page.RegisterClientScriptBlock("Employee", "<script>alert('Your Password Changed to:" + txtNewPassword.Text.ToUpper() + "')</script>");
            }
            else if (Result == 2)
            {
                Page.RegisterClientScriptBlock("Employee", "<script>alert('Old Password and New Password Should Be Different')</script>");
            }
            else
            {
                Page.RegisterClientScriptBlock("Employee", "<script>alert('Wrong UserName/Password')</script>");
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message.ToString();
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtNewPassword.Text = "";
        txtUserName.Focus();
    }
}
