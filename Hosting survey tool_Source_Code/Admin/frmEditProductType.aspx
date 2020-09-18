<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmEditProductType.aspx.cs" Inherits="Admin_frmEditProductType" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br />
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>
<asp:Panel id="pnl" runat ="server" style="width:600px">
    <p style="font-family: Verdana">
        Modify Product Type Details Here..</p>
    <table>
        <tr>
            <td style="font-family: Verdana">
                Product Type Id</td>
            <td>
                <asp:TextBox ID="txtProductTypeId" runat="server" Height="22px" ReadOnly="true" 
                    Width="151px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Verdana">
                Product Type Name</td>
            <td>
                <asp:TextBox ID="txtProductTypeName" runat="server" Height="22px" Width="149px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: Verdana">
                Description</td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" Height="111px" 
                    TextMode="MultiLine" Width="147px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnModify" runat="server" Height="16px" 
                    onclick="btnModify_Click" style="height: 26px" Text="Modify" Width="83px" />
                &nbsp;
                <asp:Button ID="btnBack" runat="server" Height="26px" onclick="btnBack_Click" 
                    Text="Back" Width="76px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMsg" runat="server" style="font-family: Verdana" Text="" 
                    Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
 <br />  
</asp:Panel>
<br />
</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
 <cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
        BorderColor="Black" Radius="15" Corners="All" TargetControlID="pnl">
    </cc1:RoundedCornersExtender>
</asp:Content>

