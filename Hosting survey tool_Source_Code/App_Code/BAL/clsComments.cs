using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using Online_Survey;

/// <summary>
/// Summary description for clsComments
/// </summary>
public class clsComments
{
    public static int UserId { get; set; }
    public static string EmailId { get; set; }
    public static int ProductId { get; set; }
    public static string CommentSubject { get; set; }
    public static string CommentDescription { get; set; }
    public static string Rating { get; set; }

    public static int InsertComments()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@UserId", clsComments.UserId);
        p[1] = new SqlParameter("@ProductId", clsComments.ProductId);
        p[2] = new SqlParameter("@CommentSubject", clsComments.CommentSubject);
        p[3] = new SqlParameter("@Rating", clsComments.Rating);
        p[4] = new SqlParameter("@CommentDescription", clsComments.CommentDescription);
        return SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure,"Sp_InsertComments", p);
    }

    public static DataSet GetCommentReports()
    {
        return SQlHelper.ExecuteDataset(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetCommentReports");
    }
}
