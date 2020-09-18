<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmProductType.aspx.cs" Inherits="Admin_frmProductType" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <br />

    <center>&nbsp;</center>
    <center>&nbsp;</center>
    <style type="text/css">
        .style8 {
            font-weight: bold;
            color: #2D3A48;
            font-size: 12px;
            font-family: Verdana, Arial, Helvetica, sans-serif;
        }
    </style>
    <center>
        <asp:Panel ID="pnl" CssClass="style8" runat="server" Style="width: 600px">
            <center>&nbsp;</center>
            <h2>Product Type Details</h2>
            <center>&nbsp;</center>

            <table>
                <tr>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlProductType" runat="server" AutoPostBack="true"
                            Height="18px" Width="224px"
                            OnSelectedIndexChanged="ddlProductType_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Product Type Id</td>
                    <td>
                        <asp:TextBox ID="txtProductTypeId" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Product Type Name</td>
                    <td>
                        <asp:TextBox ID="txtProductTypeName" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td>Description</td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" Width="147px" Height="111px"
                            TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnNew" runat="server" Text="New" Style="height: 26px"
                            Height="25px" Width="71px" OnClick="btnNew_Click" />
                        &nbsp; 
    <asp:Button ID="btnEdit" runat="server" Text="Edit" Height="27px"
        OnClick="btnEdit_Click" Width="71px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
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

