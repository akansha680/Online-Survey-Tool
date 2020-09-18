<%@ Page Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="frmContactUs.aspx.cs" Inherits="frmContactUs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
    <table style="font-family:Verdana" width="100%" height="100%" cellpadding="5" cellspacing="5" border="0">
	   				<tr>
   						<td width="80%">
				    		<table width="100%" height="100%" cellpadding="2" cellspacing="2" border="0" class="tbl1">
								<tr align="center" height="20">

									<td class="menu" colspan="2">Contact Us</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;
										<img src="images/contactus.gif" alt="contactus" height="80" width="100" border="0"></img>
									</td>
									<td  class="txt">
									You can reach us by any mode of communication.<br/>

									For furthur information please, contact to :
									&nbsp;&nbsp;<a href="#" class="lnk">info@Survey.com</a>&nbsp;&nbsp;(or)&nbsp;<a href="#" class="lnk"> hr@Survey.com </a><br/>
									<br/>
									Please, give your feed back to us.<br/>
									</td>
								</tr>
								<tr>

									<td class="txt">Name :</td>
									<td class="txt" colspan="2">
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    </td>
								</tr>
								<tr>
									<td class="txt">Email-Id :</td>
									<td class="txt" colspan="2">
                                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    </td>
								</tr>
								<tr>

									<td class="txt">Message :</td>
									<td class="txt" colspan="2">
                                        <asp:TextBox ID="txtMessage" runat="server" Height="35px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
								</tr>
								<tr>
									<td class="txt">&nbsp;</td>
									<td class="txt" colspan="2"><font class="lnk"><asp:ImageButton ID="btnSubmit" 
                                            ImageUrl="~/Images/submit_button.gif" runat="server" onclick="btnSubmit_Click"/>
                                            </font></td>
								</tr>
                                <tr>
									<td colspan="2"><asp:Label ID="lblMsg" Visible="false" runat="server" Text="lblMsg"></asp:Label></td>
									  
                                       
								</tr>
				    		</table>

						</td>
   						
					</tr>
				</table>
				<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
				    		
</asp:Content>

