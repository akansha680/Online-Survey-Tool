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
using System.IO;
using System.Drawing;


public partial class Admin_frmEditProduct : System.Web.UI.Page
{  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProductDetails();
        }
        
    }

    private void GetProductDetails()
    {
        DataSet dsGetProductDetails = clsProduct.GetProductDetails();
        gvProductDetails.DataSource = dsGetProductDetails;
        gvProductDetails.DataBind();
        //BrowseImage2.LaodImageByte = (byte[])dsGetProductDetails.Tables[0].Rows[0]["Photo"];
        //BrowseImage2.LoadFileName = dsGetProductDetails.Tables[0].Rows[0]["PhotoFileName"].ToString();
        //Session["Photo"] = (byte[])dsGetProductDetails.Tables[0].Rows[0]["Photo"];
        //Session["FileName"] = dsGetProductDetails.Tables[0].Rows[0]["PhotoFileName"].ToString();
        gvProductDetails.Visible = true;
        pnl.Visible = false;
    }

    protected void gvProductDetails_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //lblMsg.Visible =false; 
        //Label lblProductId = (Label)(gvProductDetails.Rows[e.NewEditIndex].FindControl("lblProductId"));
        //DataSet dsGetProductDetails = clsProduct.GetProductDetails();
        //DataRow drow = dsGetProductDetails.Tables[0].Select("ProductId=" +lblProductId.Text+ "")[0];
        //clsProduct.ProductId =int.Parse(drow["ProductId"].ToString());
        //txtProductName.Text = drow["ProductName"].ToString();
        //txtDescription.Text = drow["Description"].ToString();
        //txtPrice.Text = drow["Price"].ToString();
        ////BrowseImage2.LaodImageByte = (byte[])drow["Photo"];
        ////BrowseImage2.LoadFileName = drow["PhotoFileName"].ToString();
        ////Session["Photo"] = (byte[])drow["Photo"];
        ////Session["FileName"] = drow["PhotoFileName"].ToString();
        //BrowseImage2.BindImage(drow["PhotoFileName"].ToString(), (byte[])drow["Photo"]);
        //BrowseImage2.Visible = false;
        //imgButton.Visible = true;
        //imgButton.ImageUrl = "Handler.ashx?ProductId="+lblProductId.Text;
        //pnl.Visible = true;
        //gvProductDetails.Visible =false;
        
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            clsProduct.ProductName = txtProductName.Text;
            clsProduct.Description = txtDescription.Text;
            clsProduct.Price = Convert.ToDecimal(txtPrice.Text);
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
            clsProduct.Photo = photo;
            clsProduct.PhotoFileName = FileUpload1.FileName;
            bool Result = clsProduct.UpdateProductDetails();

            if (Result == false)
            {
                lblMsg.Text = "Update Failed....Try Again";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Visible = true;
            }
            else
            {
                lblMsg.Text = "Updated Successfully...";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                lblMsg.Visible = true;
                GetProductDetails();
                pnl.Visible = false;
                gvProductDetails.Visible = true;
                GetProductDetails();
                FileUpload1.Visible = false;
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.ForeColor = Color.Red;
            lblMsg.Visible = true;
        }
        
    }
    protected void imgButton_Click(object sender, ImageClickEventArgs e)
    {
        FileUpload1.Visible = true;
        imgButton.Visible = false;
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmEditProduct.aspx");
    }
    protected void gvProductDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="Edit")
        {
            lblMsg.Visible = false;
            int ProductId = Convert.ToInt32(e.CommandArgument.ToString());
            DataSet dsGetProductDetails = clsProduct.GetProductDetails();
            DataRow drow = dsGetProductDetails.Tables[0].Select("ProductId=" + ProductId + "")[0];
            clsProduct.ProductId = int.Parse(drow["ProductId"].ToString());
            txtProductName.Text = drow["ProductName"].ToString();
            txtDescription.Text = drow["Description"].ToString();
            txtPrice.Text = drow["Price"].ToString();
            //BrowseImage2.BindImage(drow["PhotoFileName"].ToString(), (byte[])drow["Photo"]);
            //BrowseImage2.Visible = false;
            imgButton.Visible = true;
            imgButton.ImageUrl = "Handler.ashx?ProductId=" +ProductId;
            pnl.Visible = true;
            gvProductDetails.Visible = false;
        }
    }
    protected void gvProductDetails_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Alternate)
            {

                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#f7fff8';");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#FFFFE1';");
                
            }
            else
            {
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#FFFFE1';");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#f7fff8';");
            }
            //e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#FFFFE1';");
            //e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#eefef0';");
        }

    }
}
