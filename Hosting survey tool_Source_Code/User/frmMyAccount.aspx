<%@ Page Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="frmMyAccount.aspx.cs" Inherits="User_frmMyAccount" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
    <center><asp:DetailsView ID="DetailsView1" CssClass="style8" runat="server" DataSourceID="SqlDataSource1" Height="50px"
        Width="309px" AutoGenerateRows="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <Fields>
            <asp:BoundField DataField="UserId" HeaderText="UserId"  ReadOnly="true" 
                SortExpression="UserId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" 
                SortExpression="DateOfBirth" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                SortExpression="EmailId" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                SortExpression="ContactNo" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            Your Account Details
        </HeaderTemplate>
        
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        
    </asp:DetailsView>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:dbConnectionString %>"
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT UserId,FirstName,LastName,convert(varchar(20),DateOfBirth,101) as DateOfBirth,Address,EmailId,ContactNo FROM tbl_UserDetails Where UserId=@UserId"
         UpdateCommand="update tbl_UserDetails set FirstName=@FirstName,LastName=@LastName,DateOfBirth=@DateOfBirth,Address=@Address,EmailId=@EmailId,ContactNo=@ContactNo where UserId=@original_UserId">
        <SelectParameters>
            <asp:SessionParameter Name="UserId" SessionField="UserId" />
        </SelectParameters>
         <UpdateParameters>
          <asp:Parameter Name="UserId" Type="Int32" />
        <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="DateOfBirth" Type="DateTime" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="CustomerEmail" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
             
                 <%--<asp:Parameter Name="UserId"/>
                <asp:Parameter Name="FirstName"/>
            <asp:Parameter Name="LastName"/>
            <asp:Parameter Name="DateOfBirth"/>
            <asp:Parameter Name="Address"/>
            <asp:Parameter Name="EmailId"/>
            <asp:Parameter Name="CustomerEmail"/>
            <asp:Parameter Name="ContactNo"/>--%>
           
        </UpdateParameters>
    </asp:SqlDataSource></center>
    <center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
</asp:Content>

