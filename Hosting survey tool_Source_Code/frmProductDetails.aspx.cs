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

public partial class frmProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProductTypeName();
        }

    }

    private void GetProductTypeName()
    {
        DataSet dsGetProdutName = clsProduct.GetProductType();
        ddlProductType.DataSource = dsGetProdutName;
        ddlProductType.DataValueField = "ProductTypeName";
        ddlProductType.DataBind();
        ddlProductType.Items.Insert(0,"Select Product Type Name");
    }
      
    protected void ddlStockType_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet dsGetProductDetails = clsProduct.GetProductDetails(ddlProductType.SelectedValue);
        dlistMaster.DataSource = dsGetProductDetails;
        dlistMaster.DataBind();
    }

    protected void View_All_Click(object sender, EventArgs e)
    {
        DataSet dsGetProductDetails = clsProduct.GetProductDetails();
        dlistMaster.DataSource = dsGetProductDetails;
        dlistMaster.DataBind();
    }
    protected void dlistMaster_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "ShowDetails")
        {
            Session["ProductId"] = e.CommandArgument.ToString();
            Response.Redirect("~/frmShowProductDetails.aspx");
        }
    }
    protected void dlistMaster_ItemCreated(object sender, DataListItemEventArgs e)
    {
        //if (e.Item.Ite==DataControlRowType.DataRow)
        //{
        //    e.Item.Attributes.Add("onmouseover", "this.className='highlight'");
        //    e.Item.Attributes.Add("onmouseout", "this.className='normal'");
        //}

    }
}
