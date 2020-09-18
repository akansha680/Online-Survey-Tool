<%@ Page Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 26px;
        }
         .style8
        {
           
	        font-weight:bold;
	        color:#000000;
	        font-size:11px;
	        font-family: Verdana, Arial, Helvetica, sans-serif;
            width: 339px;
        }
        .style9
        {
            font-weight: bold;
            color: #2D3A48;
            font-size: 12px;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            width: 377px;
        }
        .style11
        {
            width: 377px;
        }
          .style12
        {
            vertical-align:top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;&nbsp;</center>
<center>&nbsp;</center>
<center>
<asp:Panel ID="pnl" runat="server" Width="431px" Height="226px">
<center>&nbsp;</center>

    <table border="5" class="style8">
        <tr>
            <td colspan="3"><span class="style8"><b>
                <asp:Label ID="lblLogin" runat="server" Text="LblLogin"></asp:Label>
                <br />
                </b></span></td> 
        </tr>
        <tr>
            <td colspan="3" class="style8" >
                <asp:Label ID="Label1" runat="server" Visible="false" Text="Invalid LoginId and PassWord"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9" style="text-align:right;">Login Id</td>
            <td class="style8">
                <asp:TextBox ID="txtLoginId" runat="server" Height="20px" Width="124px"></asp:TextBox></td>
                <td style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="*" 
                        runat="server" ErrorMessage="*" ControlToValidate="txtLoginId"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="style9" style="text-align:right;"><b>PassWord</b></td>
            <td class="style8">
                <asp:TextBox ID="txtPassWord" runat="server" Height="19px" Width="124px" 
                    TextMode="Password"></asp:TextBox></td>
                <td style="text-align:left;">
                    &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:left"><strong><span style="font-size: 9pt; color:red">
                ( * Mandetory)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lnksignup" CausesValidation="false" Visible="false" PostBackUrl="~/frmRegistration.aspx" runat="server" 
                    style="font-size: small; color: #171715">New User SignUp Here...</asp:LinkButton></span></strong></td>
        </tr>
        <tr style="width:100px">
        <td class="style11" colspan="3">
            <asp:LinkButton ID="lnkForgot" Visible="false" CssClass="style12" CausesValidation="false" PostBackUrl="~/frmForgotPassword.aspx" runat="server" 
                style="color: #000000">Forgot Username or Password?</asp:LinkButton>
           
            <asp:ImageButton  ID="LoginButton" ImageUrl="~/Images/loginbuttonimage.jpg" 
                    Height="40" Width="60" runat="server" onclick="LoginButton_Click"/>
            </td>
             
        </tr>
    </table>
    <span class="style8"><asp:Label ID="lblMsg" runat="server"
                    Width="120px"></asp:Label></span></asp:Panel>
</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;&nbsp;</center>
<center>&nbsp;</center>
<cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
        BorderColor="Black" Radius="15" Corners="All" TargetControlID="pnl">
    </cc1:RoundedCornersExtender>
</asp:Content>

