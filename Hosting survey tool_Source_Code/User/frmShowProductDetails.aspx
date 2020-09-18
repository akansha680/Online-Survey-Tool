<%@ Page Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="frmShowProductDetails.aspx.cs" Inherits="User_frmShowProductDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <style type="text/css">
        .style9
        {
            height: 16px;
            width: 220px;
        }
        
 .style8
        {
           
	        font-weight:bold;
	        color:#2D3A48;
	        font-size:12px;
	        font-family: Verdana, Arial, Helvetica, sans-serif;
	       
        }

    </style>
<center></center>
<asp:Panel id="pnl" runat ="server" CssClass="style8" style="width:800px">
<center></center>
<center>
        <table border="0" cellspacing="0">
            <tr>
                <td valign="top">
                    <asp:DataList ID="dlistProducts" CssClass="style8" runat="server" CellPadding="3" RepeatColumns="1" 
                        Width="355px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
                        CellSpacing="2" GridLines="Both" onitemcommand="dlistProducts_ItemCommand">
                        <HeaderTemplate>
                            <center>
                                Product Details</center>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table border="1" cellpadding="1" cellspacing="2" width="100%">
                                <tr>
                                    <td align="left" width="100px" height="30px">
                                        Product Name
                                    </td>
                                    <td align="left" width="100px" height="30px">
                                        <%#Eval("ProductName")%>
                                        <asp:Label ID="lblStockId" runat="server" Text='<%#Eval("ProductId")%>' Visible="false" ></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" width="100px" height="30px">
                                        Price
                                    </td>
                                    <td align="left" width="100px" height="30px">
                                        <%#Eval("Price")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" width="100px" height="30px">
                                        Description
                                    </td>
                                    <td align="left" width="100px" height="30px">
                                        <%#Eval("Description")%>
                                    </td>
                                </tr>
                               <tr>
                                    <td align="left" width="100px" height="30px">
                                        Photo
                                    </td>
                                    <td align="left" width="100px" height="30px">
                                     <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%#"Handler.ashx?ProductId="+Eval("ProductId")%>' Width="300px" />
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:LinkButton ID="lnkComment" Font-Bold="true" CommandName="Comment" runat="server"
                                            Text="Comment"></asp:LinkButton>
                                    </td>
                                    <td align="left">
                                        <asp:LinkButton ID="lnkBack" Font-Bold="true" PostBackUrl="~/User/frmProductDetails.aspx"
                                            runat="server" Text="Back"></asp:LinkButton>
                                    </td>
                                     </td>
                                        <td align="left">
                                        <asp:LinkButton ID="lnkAvailableComment" CommandName="Available Comment" CommandArgument='<%#Eval("ProductName")%>'  Font-Bold="true" Text="Available Comment"  runat="server"></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
                
              <%--  <td valign="top">
                    <asp:Image ID="Image1" runat="server" Height="240px" 
                        Style="position: relative; top: 0px; left: 1px;" Visible="False"
                        Width="300px" />
                </td>--%>
            </tr>
        </table>
        <center></center>
    </center>
    </asp:Panel>
    <center>
        
        &nbsp;</center>
    <center>
       <asp:GridView ID="gvComments" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" Visible="False">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
         <Columns>
              
                 <asp:TemplateField HeaderText="Comment Subject">
                    <ItemTemplate>
                        <%# Eval("CommentSubject")%>
                    </ItemTemplate>
                 </asp:TemplateField>
                <asp:TemplateField HeaderText="Rating">
                    <ItemTemplate>
                          <%# Eval("Rating")%>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Comment Description">
                    <ItemTemplate>
                          <%# Eval("CommentDescription")%>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                          <%# Eval("Date")%>
                    </ItemTemplate>
                </asp:TemplateField>
              </Columns>
            <EmptyDataTemplate>
                No Data In The Table
            </EmptyDataTemplate>
    </asp:GridView>
    </center>
</asp:Content>

