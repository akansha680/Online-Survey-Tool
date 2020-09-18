<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmVoting.aspx.cs" Inherits="Admin_frmVoting" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
    
    <center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
    <asp:GridView ID="gvProductDetails" CssClass="style8" runat="server" AutoGenerateColumns="False" 
            Width="493px">
      <Columns>
               
                <asp:TemplateField HeaderText="ProductName">
                    <ItemTemplate>
                        <%# Eval("ProductName")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No Of Voting">
                    <ItemTemplate>
                        <%# Eval("Voting")%>
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
      </asp:GridView>
    <center>&nbsp;</center>
    </center>
    <center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
</asp:Content>

