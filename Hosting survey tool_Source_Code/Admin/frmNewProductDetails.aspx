<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmNewProductDetails.aspx.cs" Inherits="Admin_frmNewProductDetails" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register src="~/UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br />
<script type="text/javascript">
function validateDropDown(x,y)
{        
         if(y.Value=='Select Product Type Name') 
         {      
            y.IsValid=false;     
            alert('Please Select Product Type...');                
         } 
         else
         y.IsValid=true;                    
 }                     
</script>
    
<style type="text/css">
 .style8
        {
           
	        font-weight:bold;
	        color:#2D3A48;
	        font-size:12px;
	        font-family: Verdana, Arial, Helvetica, sans-serif;
	       
        }
</style>
<center>
<asp:Panel id="pnl" CssClass="style8" runat ="server" style="width:600px">
<center>&nbsp;</center>
  <h2>Add Product&nbsp; Details</h2> 
  <center>&nbsp;</center>
<table>
<tr><td colspan="2">
    &nbsp;</td></tr>               
<tr><td>Product Type</td>
    <td>
        <asp:DropDownList ID="ddlProductType" runat="server" AutoPostBack="true" 
            Height="18px" Width="141px">
        </asp:DropDownList>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="ddlProductType" ErrorMessage="*" 
             ClientValidationFunction="validateDropDown"></asp:CustomValidator>
          </td></tr>
<tr><td>Product&nbsp; Name</td>
    <td>
        <asp:TextBox ID="txtProductName" runat="server" Height="22px" Width="144px"></asp:TextBox><asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
            ControlToValidate="txtProductName"></asp:RequiredFieldValidator>
    </td></tr>                                                        
                                                        

<tr><td>Price</td><td>
    <asp:TextBox ID="txtPrice" runat="server" Height="22px" Width="144px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
    </td></tr>
    <tr><td>Description</td>
    <td>
        <asp:TextBox ID="txtDescription" runat="server" Height="111px" 
            TextMode="MultiLine" Width="147px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="*" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
    </td></tr>
    <tr><td colspan="2">
    <%--<uc1:BrowseImage ID="BrowseImage1" runat="server" />--%>
     <asp:FileUpload ID="FileUpload1" runat="server" />
    </td>
    </tr>
<tr><td colspan="2">
    &nbsp; 
    <asp:Button ID="btnInsert" runat="server" Text="Insert" Height="27px" 
        Width="71px" onclick="btnInsert_Click"/>
</td></tr>
<tr><td colspan="2">
<asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </td></tr>
<tr><td colspan="2">
    &nbsp;</td></tr>
</table>
 <br />  
</asp:Panel>
<br />
</center>
 <cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
        BorderColor="Black" Radius="15" Corners="All" TargetControlID="pnl">
    </cc1:RoundedCornersExtender>

</asp:Content>

