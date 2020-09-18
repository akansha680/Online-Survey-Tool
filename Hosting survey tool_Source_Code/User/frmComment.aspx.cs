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

public partial class User_frmComment : System.Web.UI.Page
{
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginId"] != null)
        {

        }
        else
            Response.Redirect("~/Login.aspx");

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        clsComments.UserId = Convert.ToInt32(Session["UserId"].ToString());
        clsComments.ProductId = Convert.ToInt32(Session["ProductId"].ToString());
        clsComments.CommentSubject = txtCommentSubject.Text;
        clsComments.CommentDescription = txtCommentDescription.Text;
        int Rating = int.Parse(txtRating.Text);
        if (Rating == 1)
            txtRating.Text =" * ";
        else if (Rating == 2)
            txtRating.Text = " * * ";
        else if (Rating == 3)
            txtRating.Text = " * * * ";
        else if (Rating == 4)
            txtRating.Text = " * * * * ";
        else if (Rating == 5)
            txtRating.Text = " * * * * * ";
        clsComments.Rating = txtRating.Text;
        if (txtRating != null && Rating <= 5)
        {
            i = clsComments.InsertComments();
        }
        else
        { 
             Page.RegisterClientScriptBlock("gopi","<script>alert('Rating Minimumis 1 And Maximum is 5')</script>");
        }
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("gopi", "<script>alert('Inserted Successfully')</script>");
            txtRating.Text = "";
            txtCommentSubject.Text = "";
            txtCommentDescription.Text = "";
        }
        else
        {
            Page.RegisterClientScriptBlock("gopi","<script>alert('Insert The Details Correctly......')</script>");
            txtRating.Text = "";
            txtCommentSubject.Text= "";
            txtCommentDescription.Text= "";
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/frmShowProductDetails.aspx");
    }
}
