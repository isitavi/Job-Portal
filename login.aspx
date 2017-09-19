<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <p style="font-size: large">
        Login Here</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 106px; text-align: right">
                <font color="white">Email:</font></td>
            <td style="width: 250px">
                <asp:TextBox ID="lemail" runat="server" Width="240px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="lemail" ErrorMessage="Email Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="lemail" ErrorMessage="Valid Email Required" 
                    ForeColor="#CC3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 106px; text-align: right">
                <font color="white">Password:</font></td>
            <td style="width: 250px">
                <asp:TextBox ID="lpass" runat="server" Width="240px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="lpass" ErrorMessage="Password Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 106px; height: 35px;">
                </td>
            <td style="width: 250px; height: 35px;">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#FF99CC" 
                    Text="Login" Width="72px" />
                <input id="Reset1" type="reset" value="Reset" /></td>
            <td style="height: 35px">
                </td>
                
        </tr>
    </table>
    </form>
    <p>  
		Not a member as yet?
		<a href="registration.aspx"> Register Now </a>
	</p>
</asp:Content>

