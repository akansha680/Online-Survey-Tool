<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
    <table width="100%" style="height:300px">
<tr><td align="center">
   <h2><span style="color: #990033">Welcome To <%=Session["AdminName"].ToString().ToUpper()%></span></h2>
</td> 
</tr> 
</table>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
</asp:Content>

