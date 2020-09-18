<%@ Page Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 268px;
        }
        .style10
        {
            width: 302px;
        }
        .style11
        {
            width: 303px;
        }
        .style12
        {
            width: 310px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <%-- <table width="100%" style="height:300px">
<tr><td align="center">
   <h2><span style="color: #990033">Welcome To <%=Session["LoginId"].ToString().ToUpper()%></span></h2>
</td> 
</tr> 
</table>--%>
<table>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td class="style10" align="center">
            &nbsp;</td>
        <td valign="top" class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style9">
            <asp:Image ID="Image1" runat="server" Width="170px"  Height="120px"/>
        </td>
        <td class="style10" align="center">
            <asp:Panel ID="Panel1" runat="server" Font-Size="Small" 
                GroupingText="Change Image" Height="83px" Width="237px">
                <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Small" 
                    Width="210px" />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" 
                    Width="65px" Font-Size="Medium" Height="24px" />
                <br />
            </asp:Panel>
        </td>
        <td valign="top" class="style12">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td align="center" class="style11">
            &nbsp;</td>
        <td align="center" class="style9">
            <asp:LinkButton ID="lbtnChangeImage" runat="server" 
                onclick="lbtnChangeImage_Click" ToolTip="Click here to change Image.">Change 
            Image</asp:LinkButton>
        </td>
        <td class="style10">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" align="center">
            &nbsp;</td>
        <td class="style9" align="center">
            <asp:Label ID="lblMsg" runat="server" Font-Size="Medium" ForeColor="Red" 
                
                
                style="font-weight: 700; font-size: medium; background-color: #C4C4C4;"></asp:Label>
        </td>
        <td class="style10">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

