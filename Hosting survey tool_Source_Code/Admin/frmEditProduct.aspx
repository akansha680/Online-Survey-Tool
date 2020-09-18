<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmEditProduct.aspx.cs" Inherits="Admin_frmEditProduct" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register src="~/UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>


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
    <br />
<br />
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>
    <asp:GridView ID="gvProductDetails" CssClass="style8" runat="server" 
        AutoGenerateColumns="False" Visible="false" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" ForeColor="Black" 
        onrowediting="gvProductDetails_RowEditing" 
        onrowcommand="gvProductDetails_RowCommand" 
        onrowcreated="gvProductDetails_RowCreated">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <Columns>
                <asp:TemplateField HeaderText="ProductId" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lblProductId" runat="server"  Text='<%# Eval("ProductId")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductName">
                    <ItemTemplate>
                        <%# Eval("ProductName")%>
                    </ItemTemplate>
                  <%--  <EditItemTemplate>
                        <asp:TextBox ID="txtProductName" runat="server" Text='<%# Eval("ProductName")%>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" 
                            ControlToValidate="txtProductName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </EditItemTemplate>--%>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <%# Eval("Description")%>
                    </ItemTemplate>
                   <%-- <EditItemTemplate>
                        <asp:TextBox ID="txtDescription" runat="server" Text='<%# Eval("Description")%>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv2" runat="server" 
                            ControlToValidate="txtDescription" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </EditItemTemplate>--%>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <%# Eval("Price")%>
                    </ItemTemplate>
                   <%-- <EditItemTemplate>
                        <asp:TextBox ID="txtPrice" runat="server" Text='<%# Eval("Price")%>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv200" runat="server" ControlToValidate="txtPrice" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </EditItemTemplate>--%>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Photo">
                    <ItemTemplate>
                         <asp:Image ID="Image1" runat="server" Width="50" Height="50"  ImageUrl='<%#"Handler.ashx?ProductId="+ Eval("ProductId")%>'/> 
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField Visible="false" CausesValidation="false" ShowEditButton="true" ShowCancelButton="false"/>
                 <asp:TemplateField HeaderText="Photo">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" CommandName="Edit" CommandArgument='<%# Eval("ProductId")%>' runat="server">Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                No Data In The Table
            </EmptyDataTemplate>
    </asp:GridView></center>
    <br />
    <br />
<br />
    

<center>
<asp:Panel id="pnl" CssClass="style8" runat ="server" style="width:600px">
<center>&nbsp;</center>
  <h2>Update Product&nbsp; Details</h2> 
  <center>&nbsp;</center>
<table>

<tr><td>Product&nbsp; Name</td>
    <td style="width: 185px">
        <asp:TextBox ID="txtProductName" runat="server" Height="23px" Width="168px"></asp:TextBox>
    </td></tr>                                                        
                                                        

<tr><td>Description</td><td style="width: 185px">
    <asp:TextBox ID="txtDescription" runat="server" Width="147px" Height="111px" 
        TextMode="MultiLine"></asp:TextBox>
    </td></tr>
    <tr><td>Price</td>
    <td style="width: 185px">
        <asp:TextBox ID="txtPrice" runat="server" Height="22px" Width="144px"></asp:TextBox>
    </td></tr>
    
  
       
    <%--<tr><td colspan="2"><center></center><uc1:BrowseImage ID="BrowseImage1" runat="server" /></td></tr>--%>
     <tr><td colspan="2">
     
         <asp:ImageButton ID="imgButton" runat="server" Height="50" Width="50" Visible="false"  onclick="imgButton_Click" />
         <%--<uc1:BrowseImage ID="BrowseImage2" runat="server" Visible="false"/>--%>
          <asp:FileUpload ID="FileUpload1" Visible="false" runat="server" />
         </td></tr>
    
<tr><td colspan="2">
    &nbsp; 
    <asp:Button ID="btnUpdate" runat="server" Text="Update" Height="27px" 
        Width="71px" onclick="btnUpdate_Click"/>&nbsp;
    <asp:Button ID="btnBack" runat="server" Height="27px" 
         Text="Back" Width="71px" onclick="btnBack_Click" />
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
    <center>&nbsp;</center>
<center>&nbsp;</center>
</asp:Content>

