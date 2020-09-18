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
/// Summary description for clsUser
/// </summary>
public class clsUser
{
    public static int UserId { get; set; }
    public static string LoginId { get; set; }
    public static string PassWord { get; set; }
    public static string FirstName { get; set; }
    public static string LastName { get; set; }
    public static  DateTime DateOfBirth { get; set; }
    public static string Address { get; set; }
    public static string EmailId { get; set; }
    public static string ContactNo { get; set; }
    public static byte[] Photo { get; set; }
    public static string PhotoFileName { get; set; }
    public static string HintQuestion { get; set; }
    public static string Answer { get; set; }

    public static int GetUserId()
    {
       // return Convert.ToInt32(SqlHelper.ExecuteScalar(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetUserId"));
        return Convert.ToInt32(SQlHelper.ExecuteScalar(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetUserId"));
    }

    public static bool CheckLoginId(string UserLoginId)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@LoginId",UserLoginId);
        p[0].SqlDbType = SqlDbType.VarChar;
        //SqlDataReader dr = SqlHelper.ExecuteReader(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_CheckUserLoginId", p);
        SqlDataReader dr = SQlHelper.ExecuteReader(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_CheckUserLoginId", p);

        if (dr.HasRows)
        {
            return false;
        }
        else
        {
            return true;
        }

    }

    public static bool InsertUserRegistration()
    {
        try
        {
            SqlParameter[] p1 = new SqlParameter[5];
            p1[0] = new SqlParameter("@UserId",clsUser.UserId);
            p1[0].SqlDbType = SqlDbType.Int;

            p1[1] = new SqlParameter("@LoginId", clsUser.LoginId);
            p1[1].SqlDbType = SqlDbType.VarChar;

            p1[2] = new SqlParameter("@PassWord", clsUser.PassWord);
            p1[2].SqlDbType = SqlDbType.VarChar;

            p1[3] = new SqlParameter("@HintQuestion", clsUser.HintQuestion);
            p1[3].SqlDbType = SqlDbType.VarChar;

            p1[4] = new SqlParameter("@Answer", clsUser.Answer);
            p1[4].SqlDbType = SqlDbType.VarChar;

            //SqlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure,"Sp_LoginInsert", p1);
            SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_LoginInsert", p1);

            SqlParameter[] p = new SqlParameter[9];

            p[0] = new SqlParameter("@UserId", clsUser.UserId);
            p[0].SqlDbType = SqlDbType.Int;

            p[1] = new SqlParameter("@FirstName", clsUser.FirstName);
            p[1].SqlDbType = SqlDbType.VarChar;

            p[2] = new SqlParameter("@LastName", clsUser.LastName);
            p[2].SqlDbType = SqlDbType.VarChar;

            p[3] = new SqlParameter("@DateOfBirth", clsUser.DateOfBirth);
            p[3].SqlDbType = SqlDbType.DateTime;

            p[4] = new SqlParameter("@Address", clsUser.Address);
            p[4].SqlDbType = SqlDbType.VarChar;

            p[5] = new SqlParameter("@EmailId", clsUser.EmailId);
            p[5].SqlDbType = SqlDbType.VarChar;

            p[6] = new SqlParameter("@ContactNo", clsUser.ContactNo);
            p[6].SqlDbType = SqlDbType.VarChar;

            p[7] = new SqlParameter("@Photo",clsUser.Photo);
            
            p[8] = new SqlParameter("@PhotoFileName", clsUser.PhotoFileName);
            p[8].SqlDbType = SqlDbType.VarChar;

            //SqlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_InsertUserRegistration", p);
            SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_InsertUserRegistration", p);
            return true;
        }
        catch (Exception ex)
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@UserId",clsUser.UserId);
            p[0].SqlDbType = SqlDbType.Int;
            //SqlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_LoginIdDelete", p);
            SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_LoginIdDelete", p);
            return false;
        }
    }
    public static int GetOrUpdatePhoto(int UserId, byte[] photo,string FileName)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@UserId", UserId);
            p[1] = new SqlParameter("@Photo", photo);
            p[2] = new SqlParameter("@FileName", FileName);
            return SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_UpdatePhoto", p);
            //return SQlHelper.ExecuteDataset(clsConnection.GetConnectionString(), CommandType.Text, "update tbl_UserDetails set PhotoFileName='"+FileName+"',Photo='"+photo+"' where UserId="+UserId+"");
        }
        catch (ArgumentException ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
