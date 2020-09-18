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
/// Summary description for clsLogin
/// </summary>
public class clsLogin
{
    public static int UserId { get; set; }
    public static string LoginId { get; set; }
    public static string PassWord { get; set; }

    public static string GetUserLogin(out int id)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[4];

            p[0] = new SqlParameter("@LoginId",LoginId);
            p[1] = new SqlParameter("@PassWord", PassWord);
            p[2] = new SqlParameter("@Role", SqlDbType.VarChar, 20);
            p[2].Direction = ParameterDirection.Output;
            p[3] = new SqlParameter("@UserId", SqlDbType.Int);
            p[3].Direction = ParameterDirection.Output;
            SQlHelper.ExecuteDataset(clsConnection.GetConnectionString(), CommandType.StoredProcedure,"Sp_GetUserLogin", p);
            id = Convert.ToInt32(p[3].Value);
            return p[2].Value.ToString();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
