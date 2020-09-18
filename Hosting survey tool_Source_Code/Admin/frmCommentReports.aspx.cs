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

public partial class Admin_frmCommentReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        {
            GetCommentReports();
        }

    }

    private void GetCommentReports()
    {
        DataSet dsGetCommentReports = clsComments.GetCommentReports();
        gvComments.DataSource = dsGetCommentReports;
        gvComments.DataBind();
    }
    protected void gvComments_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //if (e.Row.RowState == DataControlRowState.Alternate)
            //{
            //    e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#FFFFE1';");
            //    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#f7fff8';");
            //}
            //else
            //{
            //    e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#FFFFE1';");
            //    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#eefef0';");
            //}
            e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#FFFFE1';");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#eefef0';");
        }
    }
}
