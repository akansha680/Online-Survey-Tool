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

public partial class User_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetPhoto();
            
        }
    }

    private void GetPhoto()
    {
        int Id = Convert.ToInt32(Session["UserId"].ToString());
        Image1.ImageUrl = "~/User/UserPhoto.ashx?UserId=" + Id;
        Panel1.Visible = false;
    }
    protected void lbtnChangeImage_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            byte[] myimage = new byte[FileUpload1.PostedFile.ContentLength];
            HttpPostedFile Image = FileUpload1.PostedFile;
            Image.InputStream.Read(myimage, 0, (int)FileUpload1.PostedFile.ContentLength);
            int i=clsUser.GetOrUpdatePhoto(Convert.ToInt32(Session["UserId"].ToString()),myimage,FileUpload1.FileName);
            if (i > 0)
            {
                GetPhoto();
            }
        }
        catch (ArgumentException ex)
        { 
            lblMsg.Text = ex.Message; 
        }
    }
}
