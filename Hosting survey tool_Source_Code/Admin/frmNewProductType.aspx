<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmNewProductType.aspx.cs" Inherits="Admin_frmNewProductType" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br />
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
  <h2>Add Product Type Details Here..</h2> 
  <center>&nbsp;</center>
<table>
        
<tr><td>Product Type Id</td>
    <td>
        <asp:TextBox ID="txtProductTypeId" runat="server" Height="22px" Width="151px" ReadOnly="true"></asp:TextBox>
    </td></tr>
<tr><td>Product Type Name</td>
    <td>
        <asp:TextBox ID="txtProductTypeName" runat="server" Height="22px" Width="149px"></asp:TextBox>
    </td></tr>                                                        
                                                        

<tr><td>Description</td><td>
    <asp:TextBox ID="txtDescription" runat="server" Width="147px" Height="111px" 
        TextMode="MultiLine"></asp:TextBox>
    </td></tr>
<tr><td colspan="2">
<asp:Button ID="btnAdd" runat="server" Text="Add" style="height: 26px" 
        Height="16px" Width="83px" onclick="btnAdd_Click"/>
    &nbsp; 
    <asp:Button ID="btnBack" runat="server" Height="26px" onclick="btnBack_Click" 
        Text="Back" Width="76px" />
    </td></tr>
<tr><td colspan="2">
<asp:Label ID="lblMsg" runat="server" Text="" Visible="false"></asp:Label>
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

