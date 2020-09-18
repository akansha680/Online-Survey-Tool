<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmCommentReports.aspx.cs" Inherits="Admin_frmCommentReports" Title="Untitled Page" %>

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
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>
    <asp:GridView ID="gvComments" CssClass="style8" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" Width="682px" 
        onrowcreated="gvComments_RowCreated">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
         <Columns>
                <asp:TemplateField HeaderText="UserId" Visible="false">
                    <ItemTemplate>
                       <%# Eval("UserId")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmailId">
                    <ItemTemplate> 
                        <%# Eval("EmailId")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductId">
                    <ItemTemplate>
                      <%# Eval("ProductId")%>
                    </ItemTemplate>
                 </asp:TemplateField>
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
    </asp:GridView></center>
    <center>&nbsp;</center>
    <center>&nbsp;</center>
    <center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
</asp:Content>

