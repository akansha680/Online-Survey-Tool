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

public partial class frmShowProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProductsByProductType();
        }

    }

    private void GetProductsByProductType()
    {
        DataSet dsGetProductsByProductType = clsProduct.GetProductsByProductType(Convert.ToInt32(Session["ProductId"].ToString()));
        dlistProducts.DataSource = dsGetProductsByProductType;
        dlistProducts.DataBind();
    }
    protected void dlistProducts_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Comment")
        {
            Response.Redirect("~/User/frmComment.aspx");
        }
        else 
        {
            string ProductName = e.CommandArgument.ToString();
            DataSet dsGetAvailableComment = clsProduct.GetAvailableComment(ProductName);
            gvComments.DataSource = dsGetAvailableComment;
            gvComments.DataBind();
            gvComments.Visible = true;
        }
    }
}
