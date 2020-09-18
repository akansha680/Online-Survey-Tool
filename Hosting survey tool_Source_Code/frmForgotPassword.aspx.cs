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

public partial class frmForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            clsPassWordManagement.UserName = txtUserName.Text;
            clsPassWordManagement.HintQuestion = ddlHintQuestion.SelectedItem.Text;
            clsPassWordManagement.Answer = txtAnswer.Text;
            string password = clsPassWordManagement.RecoverPassWord();
            Page.RegisterClientScriptBlock("Employee", "<script>alert('Your Password: " + password.ToUpper() + "')</script>");

        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtAnswer.Text = "";
        ddlHintQuestion.SelectedIndex = 0;
        txtUserName.Focus();
    }
}
