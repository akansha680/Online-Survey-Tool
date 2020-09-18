<%@ Page Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="frmProductDetails.aspx.cs" Inherits="frmProductDetails" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 227px;
            height: 16px;
            color: #ECE9D8;
            font-family: Verdana;
        }
        .style11
        {
            height: 16px;
            width: 279px;
        }
         .style8
        {
           
	        font-weight:bold;
	        color:#2D3A48;
	        font-size:12px;
	        font-family: Verdana, Arial, Helvetica, sans-serif;
	       
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>&nbsp;</center>
<asp:Panel id="pnl" CssClass="style8" runat ="server" style="width:800px">
   
    <center>
        &nbsp;</center>
    <center>
        <table style="width: 702px; height: 304px;">
           
            <tr>
            
                <td class="style10">
                    View Products By Category&gt;&gt;</td>
                <td style="text-align:center" class="style11">
                    <asp:DropDownList ID="ddlProductType" CssClass="style8" runat="server"  Width="225px" 
                        AutoPostBack="True" 
                        onselectedindexchanged="ddlStockType_SelectedIndexChanged" Height="16px">
                    </asp:DropDownList></td>
                <td colspan="2" style="height: 16px; text-align:center">
                    <asp:Button ID="View_All" runat="server" 
                        Text="View All" Font-Bold="True" onclick="View_All_Click" 
                       /></td>
            </tr>
            <tr>
                <td colspan="5" style="height: 21px">
                    <span><span style="color:#ECE9D8"><strong></strong>&nbsp;</span></span></td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:DataList ID="dlistMaster" runat="server" CellPadding="4" ForeColor="#333333"
                        Width="310px" RepeatColumns="1" 
                        Height="182px" onitemcommand="dlistMaster_ItemCommand" 
                        onitemcreated="dlistMaster_ItemCreated">
                        <HeaderTemplate>
                            <center>
                                Products</center>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table style="border-bottom-color:Black" border="1" cellpadding="2" cellspacing="2" width="100%">
                                <tr>
                                    <td align="left" valign="bottom" width="100%">
                                        <asp:LinkButton ID="ShowDetails" runat="server" Text='<%#Eval("ProductName")%>' CommandArgument='<%#Eval("ProductId")%>' CommandName="ShowDetails"></asp:LinkButton>
                                    </td>
                                </tr>
                       
                            </table>
                        </ItemTemplate>
                        <FooterTemplate>
                            <center>
                            </center>
                        </FooterTemplate>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </center>
    <div>
        &nbsp;</div></asp:Panel>
         <center>&nbsp;</center>
        
        <cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
        BorderColor="Black" Radius="15" Corners="All" TargetControlID="pnl">
    </cc1:RoundedCornersExtender>

</asp:Content>

