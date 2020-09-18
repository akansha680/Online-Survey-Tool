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
/// Summary description for clsPassWordManagement
/// </summary>
public class clsPassWordManagement
{
    public static string UserName { get; set; }
    public static string PassWord { get; set; }
    public static string NewPassWord { get; set; }
    public static string HintQuestion { get; set; }
    public static string Answer { get; set; }

    public static int ChangePassword()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@UserName", UserName);
        p[1] = new SqlParameter("@OldPassWord", PassWord);
        p[2] = new SqlParameter("@NewPassWord", NewPassWord);
        p[3] = new SqlParameter("@Result", SqlDbType.Int);
        p[3].Direction = ParameterDirection.Output;
        SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_ChangePassWord",p);
        return Convert.ToInt32(p[3].Value);
    }

    public static string RecoverPassWord()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[4];
            p[0] = new SqlParameter("@UserName", UserName);
            p[1] = new SqlParameter("@HintQuestion", HintQuestion);
            p[2] = new SqlParameter("@Answer", Answer);
            p[3] = new SqlParameter("@PassWord",SqlDbType.VarChar,50);
            p[3].Direction = ParameterDirection.Output;
            SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_ForgotPassWord", p);
            PassWord = p[3].Value.ToString();
            return p[3].Value.ToString();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
}
