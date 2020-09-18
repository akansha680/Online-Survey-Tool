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

public partial class Admin_frmNewProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProductName();
        }
    }
    private void GetProductName()
    {
        DataSet dsGetProdutName = clsProduct.GetProductType();
        ddlProductType.DataSource = dsGetProdutName;
        ddlProductType.DataValueField = "ProductTypeName";
        ddlProductType.DataBind();
        ddlProductType.Items.Insert(0,"Select Product Type Name");
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {
            clsProduct.ProductId = clsProduct.GetNewProductId();
            clsProduct.ProductName = txtProductName.Text;
            clsProduct.ProductTypeId = clsProduct.GetProductTypeId(ddlProductType.SelectedValue);
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
            bool Result = clsProduct.InsertProductDetails();
            if (Result == false)
            {
                lblMsg.Text = "Product Insertion Failed....Try Again";
                lblMsg.ForeColor = Color.Red;
                lblMsg.Visible = true;
                Clear();
            }
            else
            {
                lblMsg.Text = "Product Inserted Successfully...";
                lblMsg.ForeColor = Color.Green;
                lblMsg.Visible = true;
                Clear();
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            lblMsg.ForeColor = Color.Red;
            lblMsg.Visible = true;
        }
       
    }

    private void Clear()
    {
        ddlProductType.SelectedIndex = 0;
        txtProductName.Text = "";
        txtDescription.Text = "";
        txtPrice.Text = "";
        Session["Photo"] = null;
        Session["FileName"] = null;
    }
   
    //protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
    //{
    //     if(args.Value=="Select Product Type Name") 
    //     {      
    //        args.IsValid=false;
    //        Page.RegisterClientScriptBlock("gopi", "<script>alert('Select Product Type Name.....')</script>");
    //     } 
    //     else
    //     args.IsValid=true;   

    //}
}
