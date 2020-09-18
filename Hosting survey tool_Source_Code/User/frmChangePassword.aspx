<%@ Page Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="frmChangePassword.aspx.cs" Inherits="User_frmChangePassword" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
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
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>


<center>
<h3 style="text-decoration: underline" class="style9">Change Password</h3>
<center>&nbsp;</center>
<asp:Panel ID="pnl" runat="server" Width="383px" Height="185px">
<center>&nbsp;</center>
<center>&nbsp;</center>
<table>
<tr>
<td class="style9">UserName</td><td class="style9"><asp:TextBox ID="txtUserName" runat ="server" ></asp:TextBox></td>
    <td class="style9"><asp:RequiredFieldValidator ID="RFVUserName" runat ="server" ControlToValidate="txtUserName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td class="style9">Old Password</td><td class="style9"><asp:TextBox ID="txtPassword" runat ="server" MaxLength="8" TextMode="Password" ></asp:TextBox></td>
    <td class="style9"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ControlToValidate="txtPassword" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td class="style9">New Password</td><td class="style9"><asp:TextBox ID="txtNewPassword" runat ="server" 
        MaxLength="8" TextMode="Password" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" ControlToValidate="txtNewPassword" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td colspan="3"><asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click" OnClientClick="return confirm('Do u Want Update Your Password!')" />
    <asp:Button ID="btnClear" runat ="server" Text="Clear" CausesValidation="false" 
        onclick="btnClear_Click" /></td>
</tr>
<tr>
<td colspan="3"><asp:Label ID="lblMsg" runat ="server" Visible ="false" 
        style="font-family: Verdana" ></asp:Label></td>
</tr>
</table>
<center>&nbsp;</center>
</asp:Panel>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</center>
<cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
        BorderColor="Black" Radius="15" Corners="All" TargetControlID="pnl">
    </cc1:RoundedCornersExtender>
</asp:Content>

