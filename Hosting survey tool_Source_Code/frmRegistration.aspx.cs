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
using System.Drawing;
using System.IO;


public partial class frmRegistration : System.Web.UI.Page
{
    bool Avail = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            lblId.Text = "";
            clsUser.UserId = clsUser.GetUserId();
            clsUser.LoginId = txtLoginId.Text;
            Avail = clsUser.CheckLoginId(txtLoginId.Text);
            if (Avail == true)
            {
                clsUser.LoginId = txtLoginId.Text;
                clsUser.PassWord = txtPassword.Text;
                clsUser.FirstName = txtFName.Text;
                clsUser.LastName = txtLName.Text;
                clsUser.HintQuestion = ddlHintQuestion.SelectedItem.Text;
                clsUser.Answer = txtAnswer.Text;
                clsUser.DateOfBirth = Convert.ToDateTime(txtDOB.Text);
                clsUser.Address = txtAddress.Text;
                clsUser.ContactNo = txtPhoneNo.Text;
                clsUser.EmailId = txtEmailId.Text;
                byte[] photo;
                if (FileUpload1.HasFile)
                {
                    BinaryReader reader = new BinaryReader(FileUpload1.PostedFile.InputStream);
                    photo = reader.ReadBytes(FileUpload1.PostedFile.ContentLength);
                }
                else
                {
                    throw new NotImplementedException("Photo Not Uploaded");
                }
                clsUser.Photo = photo;
                clsUser.PhotoFileName = FileUpload1.FileName;
                bool Result = clsUser.InsertUserRegistration();
                if (Result == false)
                {
                    lblMessage.Text = "User Registration Failed....Try Again";
                    lblMessage.ForeColor = Color.Red;
                    lblMessage.Visible = true;
                    ResetControls(this);
                }
                else
                {
                    lblMessage.Text = "User Registration Successfully...";
                    lblMessage.ForeColor = Color.Green;
                    lblMessage.Visible = true;
                    ResetControls(this);
                }

            }
            else
            {
                lblId.Text = "LoginId Already Exists...You are Enter Another Name";
                lblId.ForeColor = Color.Red;
                lblId.Visible = true;
                txtLoginId.Text = "";
                ResetControls(this);
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text =ex.Message;
            lblMessage.ForeColor = Color.Red;
            lblMessage.Visible = true;
        }
        
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        ResetControls(this);
    }

    private void ResetControls(Control Parent)
    {
        foreach (Control C in Parent.Controls)
        {
            if (C.Controls.Count > 0)
            {
                ResetControls(C);
            }
            else
            {
                switch (C.GetType().ToString())
                {
                    case "System.Web.UI.WebControls.TextBox":
                        ((TextBox)C).Text = string.Empty;
                        break;
                    case "System.Web.UI.WebControls.DropDownList":
                        ((DropDownList)C).SelectedIndex = 0;
                        break;
                    case "System.Web.UI.WebControls.Label":
                        ((Label)C).Text = string.Empty;
                        break;
                }
            }
        }
    }
    
    protected void txtPassword_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void txtLoginIdChanged(object sender, EventArgs e)
    {
        Avail = clsUser.CheckLoginId(txtLoginId.Text);
        if (Avail == true)
        {
            
            lblId.Text = "LoginId Not Exists...Complete Another Data";
            lblId.ForeColor = Color.Green;
            lblId.Visible = true;

        }
        else
        {
            Page.RegisterClientScriptBlock("gopi", "<script>alert('LoginId Already Exists...You are Enter Another Name')</script>");
            //lblId.Text = "LoginId Already Exists...You are Enter Another Name";
            //lblId.ForeColor = Color.Red;
            //lblId.Visible = true;
            txtLoginId.Text = "";
        }
    }
}
