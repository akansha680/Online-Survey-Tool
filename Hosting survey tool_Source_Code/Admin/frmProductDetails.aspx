<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmProductDetails.aspx.cs" Inherits="Admin_frmProductDetails" Title="Untitled Page" %>

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
                <asp:TemplateField HeaderText="ProductId" Visible="false">
                    <ItemTemplate>
                        <%# Eval("ProductId")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductName">
                    <ItemTemplate>
                        <%# Eval("ProductName")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <%# Eval("Description")%>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <%# Eval("Price")%>
                    </ItemTemplate>
                 </asp:TemplateField>
                <asp:TemplateField HeaderText="Photo">
                    <ItemTemplate>
                         <asp:Image ID="Image1" runat="server" Width="50" Height="50"  ImageUrl='<%#"Handler.ashx?ProductId="+Eval("ProductId")%>'/> 
                    </ItemTemplate>
                </asp:TemplateField>
              </Columns>
            <EmptyDataTemplate>
                No Data In The Table
            </EmptyDataTemplate>
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

