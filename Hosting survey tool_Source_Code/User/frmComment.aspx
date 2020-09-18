<%@ Page Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="frmComment.aspx.cs" Inherits="User_frmComment" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            font-size: medium;
        }
    .style10
    {
        font-family: Verdana;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>
    <asp:Panel ID="pnl" Width="560" runat="server">
      <center>&nbsp;</center>
        <center>&nbsp;</center>
    <table style="text-align="center">
<tr><td colspan="2" 
        style="height: 27px; text-decoration: underline;" class="style9">
    <p>
        Comments</p>
    </td></tr>

<tr><td style="font-size: small" class="style10"><b>Comment Subject</b></td><td class="style3">
    <asp:TextBox ID="txtCommentSubject" runat="server" Width="225px" Height="20px" 
        TextMode="SingleLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtCommentSubject" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td></tr>
    <tr><td style="font-size: small" class="style10"><b>Rating</b></td><td class="style3">
    <asp:TextBox ID="txtRating" runat="server" Width="227px" Height="21px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtRating" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td></tr>
    <tr><td style="font-size: small" class="style10"><b>Comment Description</b></td><td class="style3">
    <asp:TextBox ID="txtCommentDescription" runat="server" Width="227px" Height="75px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtCommentDescription" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td></tr>
     
<tr><td colspan="2">
<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" 
        style="height: 26px" />
    &nbsp; 
    <asp:Button ID="btnBack" runat="server" style="margin-bottom: 0px;" Text="Back" 
        Height="26px" CausesValidation="false" onclick="btnBack_Click" Width="64px" />
    </td></tr>
<tr><td colspan="2">
<asp:Label ID="lblMsg" runat="server" Text="" style="font-family: Verdana"></asp:Label>
    </td></tr>
<tr><td colspan="2">
    &nbsp;</td></tr>
</table>
  <center>&nbsp;</center>
    <center>&nbsp;</center>
    </asp:Panel></center>
    
    <center>&nbsp;</center>
    <center>&nbsp;</center>
    <center>&nbsp;<br />
</center>
    <center>&nbsp;</center>
       <cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
        BorderColor="Black" Radius="15" Corners="All" TargetControlID="pnl">
    </cc1:RoundedCornersExtender>
<center>&nbsp;</center>
   
<br />
   
</asp:Content>

