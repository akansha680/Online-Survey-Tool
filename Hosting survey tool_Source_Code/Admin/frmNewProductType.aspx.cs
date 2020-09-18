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

public partial class Admin_frmNewProductType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetNewProductTypeId();
        }

    }

    private void GetNewProductTypeId()
    {
        clsProduct.ProductTypeId = clsProduct.GetNewProductTypeId();
        txtProductTypeId.Text = (clsProduct.ProductTypeId).ToString();
        txtProductTypeId.ReadOnly = true;
        
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        clsProduct.ProductTypeName = txtProductTypeName.Text;
        clsProduct.Description = txtDescription.Text;
       
        string msg;
        int i=clsProduct.GetNewProductTypeInsert(out msg);
        if (i>0)
        {
            lblMsg.Text = "Product Type Details Inserted Successfully....";
            lblMsg.Visible = true;
        }
        else 
        {
            lblMsg.Text = msg;
            lblMsg.Visible = true;
            //Page.RegisterClientScriptBlock("gopi","<script>alert()</script>");
        }
        
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmProductType.aspx");
    }
}
