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

public partial class Admin_frmEditProductType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProductType();
        }

    }

    private void GetProductType()
    {
        DataSet dsGetProductType = clsProduct.GetProductType();
        DataRow drow = dsGetProductType.Tables[0].Select("ProductTypeId="+Convert.ToInt32(Session["ProductTypeId"].ToString())+"")[0];
        txtProductTypeId.Text = drow["ProductTypeId"].ToString();
        txtProductTypeName.Text = drow["ProductTypeName"].ToString();
        txtDescription.Text = drow["Description"].ToString();
    }
    protected void btnModify_Click(object sender, EventArgs e)
    {
        clsProduct.ProductTypeId =Convert.ToInt32(txtProductTypeId.Text);
        clsProduct.ProductTypeName = txtProductTypeName.Text;
        clsProduct.Description = txtDescription.Text;
        string msg;
        int i = clsProduct.GetProductTypeUpdate(out msg);
        if (i > 0)
        {
            lblMsg.Text = "Product Type Details Updated Successfully....";
            lblMsg.Visible = true;
        }
        else
        {
            lblMsg.Text = msg;
            lblMsg.Visible = true;
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/frmProductType.aspx");
    }
}
