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
/// Summary description for clsProduct
/// </summary>
public class clsProduct
{
    static int i;
    public static int ProductTypeId { get; set; }
    public static string ProductTypeName { get; set; }
    public static string Description { get; set; }

    public static DataSet GetProductType()
    {
        return SQlHelper.ExecuteDataset(clsConnection.GetConnectionString(), CommandType.StoredProcedure,"Sp_GetProductType");
    }

    public static int GetNewProductTypeId()
    {
        return Convert.ToInt32(SQlHelper.ExecuteScalar(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetNewProductTypeId"));
    }

    public static int GetNewProductTypeInsert(out string msg)
    {
        msg = "";
        try
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@ProductTypeId", clsProduct.ProductTypeId);
            p[1] = new SqlParameter("@ProductTypeName",clsProduct.ProductTypeName);
            p[2] = new SqlParameter("@Description", clsProduct.Description);
            i=SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetNewProductTypeInsert",p);
           
        }
        catch (Exception ex)
        {
            msg = ex.Message;
        }
        return i; 
    }

    public static int GetProductTypeUpdate(out string msg)
    {
        msg = "";
        try
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@ProductTypeId", clsProduct.ProductTypeId);
            p[1] = new SqlParameter("@ProductTypeName", clsProduct.ProductTypeName);
            p[2] = new SqlParameter("@Description", clsProduct.Description);
            i = SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetProductTypeUpdate", p);
        }
        catch (Exception ex)
        {
            msg = ex.Message;
        }
        return i;
    }
          
    public static int ProductId { get; set; }
    public static string ProductName { get; set; }
    //public static int ProductTypeId { get; set; }
    //public static string Description { get; set; }
    public static decimal Price{ get; set; }
    public static byte[] Photo { get; set; }
    public static string PhotoFileName { get; set; }

    public static int GetNewProductId()
    {
        return Convert.ToInt32(SQlHelper.ExecuteScalar(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetNewProductId"));
    }

    public static int GetProductTypeId(string ProductTypeName)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@ProductTypeName",ProductTypeName);
        p[1] = new SqlParameter("@ProductTypeId",SqlDbType.Int);
        p[1].Direction = ParameterDirection.Output;
        SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetProductTypeId", p);
        return  Convert.ToInt32(p[1].Value.ToString());
        
    }

    public static bool InsertProductDetails()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[7];
            p[0] = new SqlParameter("@ProductId", clsProduct.ProductId);
            p[1] = new SqlParameter("@ProductName", clsProduct.ProductName);
            p[2] = new SqlParameter("@ProductTypeId", clsProduct.ProductTypeId);
            p[3] = new SqlParameter("@Description", clsProduct.Description);
            p[4] = new SqlParameter("@Price",clsProduct.Price);
            p[5] = new SqlParameter("@Photo",clsProduct.Photo);
            p[6] = new SqlParameter("@PhotoFileName",clsProduct.PhotoFileName);
            SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_InsertProductDetails",p);
            return true;
        }
        catch (Exception)
        {
            return false;
        }
        
        
        
    }

    public static DataSet GetProductDetails()
    {
        return SQlHelper.ExecuteDataset(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetProductDetails");
    }

    public static bool UpdateProductDetails()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[6];
            p[0] = new SqlParameter("@ProductId", clsProduct.ProductId);
            p[1] = new SqlParameter("@ProductName", clsProduct.ProductName);
            p[2] = new SqlParameter("@Description", clsProduct.Description);
            p[3] = new SqlParameter("@Price", clsProduct.Price);
            p[4] = new SqlParameter("@Photo", clsProduct.Photo);
            p[5] = new SqlParameter("@PhotoFileName", clsProduct.PhotoFileName);
            SQlHelper.ExecuteNonQuery(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_UpdateProductDetails", p);
            return true;
        }
        catch (Exception)
        {
            return false;
        }
    }

    public static DataSet GetProductDetails(string ProductTypeName)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@ProductTypeName",ProductTypeName);
        return SQlHelper.ExecuteDataset(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetProductDetailsById",p);
    }



    public static DataSet GetProductsByProductType(int ProductId)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@ProductId",ProductId);
        return SQlHelper.ExecuteDataset(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetProductsByProductType", p);
    }
       
    public static DataSet GetAvailableComment(string ProductName)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@ProductName",ProductName);
        return SQlHelper.ExecuteDataset(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_GetAvailableComment", p);
    }

    public static DataSet GetVoting()
    {
        return SQlHelper.ExecuteDataset(clsConnection.GetConnectionString(), CommandType.StoredProcedure, "Sp_Voting");
    }
}
