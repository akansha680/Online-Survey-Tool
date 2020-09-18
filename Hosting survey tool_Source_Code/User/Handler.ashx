<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class Handler : IHttpHandler 
{
    public void ProcessRequest(HttpContext context)
    {
        string str = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        con.Open();
        int ProducId = Convert.ToInt32(context.Request.QueryString["ProductId"].ToString());
        string sql = "Select Photo from tbl_ProductDetails where ProductId="+ProducId;
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((byte[])dr["Photo"]);
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