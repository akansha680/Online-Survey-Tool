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
using System.Web.Mail;

public partial class frmContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
    {
	MailMessage objMail = new MailMessage();
        objMail.From = "BgVerification.Com";
        objMail.To = "localhost";
        objMail.Subject = "Contact Us";
        objMail.Body = "Your Name : '"+txtName.Text+"' , EmailId : '" + txtEmail.Text + "' and Message : " + txtMessage.Text + "";
        SmtpMail.SmtpServer = "localhost";
        SmtpMail.Send(objMail);
        lblMsg.Text = "Message Send Successfully";

        lblMsg.Visible = true;
    }
}
