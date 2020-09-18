<%@ WebHandler Language="C#" Class="UserPhoto" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class UserPhoto : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        string str = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        con.Open();
        int ProducId = Convert.ToInt32(context.Request.QueryString["UserId"].ToString());
        string sql = "Select Photo from tbl_UserDetails where UserId=" + ProducId;
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        //context.Response.BinaryWrite((byte[])dr["Photo"]);
        byte[] image = (byte[])dr["Photo"];
        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        ms.Write(image, 0, image.Length);
        context.Response.Buffer = true;
        if (image.Length != 0)
        { 
            context.Response.BinaryWrite(image); 
        }
        ms.Dispose();
        dr.Close();
        con.Close();
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }


}