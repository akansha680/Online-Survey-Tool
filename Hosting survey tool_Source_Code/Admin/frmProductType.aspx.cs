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

public partial class Admin_frmProductType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProdutType();
        }

    }

    private void GetProdutType()
    {
        DataSet dsGetProdutType =clsProduct.GetProductType();
        ddlProductType.DataSource = dsGetProdutType;
        ddlProductType.DataValueField = "ProductTypeName";
        ddlProductType.DataBind();
        ddlProductType.Items.Insert(0,"----Select Product Type Name----");
    }

    
    protected void btnNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmNewProductType.aspx");
    }
    
    protected void ddlProductType_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet dsGetProdutType = clsProduct.GetProductType();
        DataRow drow = dsGetProdutType.Tables[0].Select("ProductTypeName='"+ddlProductType.SelectedValue+"'")[0];
        txtProductTypeId.Text = drow["ProductTypeId"].ToString();
        txtProductTypeName.Text = drow["ProductTypeName"].ToString();
        txtDescription.Text = drow["Description"].ToString();
    }
    
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        if (ddlProductType.SelectedValue != "----Select Product Type Name----")
        {
            Session["ProductTypeId"] = txtProductTypeId.Text;
            Response.Redirect("~/Admin/frmEditProductType.aspx");
        }
        else
        {
            Page.RegisterClientScriptBlock("gopi", "<script>alert('Please Select Product Type In Dropdown List')</script>");    
        }
    }
}
