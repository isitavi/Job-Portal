<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<p style="font-size: large"><strong>Contact us Here</strong></p>
    <table style="width: 100%">
        <tr>
            <td style="width: 185px; text-align: right;">
                <font color="white">Name:</font></td>
            <td style="width: 241px">
                <asp:TextBox ID="cname" runat="server" Width="240px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="cname" ErrorMessage="Name Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 185px; text-align: right;">
                <font color="white">Phone No.</font></td>
            <td style="width: 241px">
                <asp:TextBox ID="cphone" runat="server" Width="240px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="cphone" ErrorMessage="Phone No Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 185px; text-align: right;">
                <font color="white">Email:</font></td>
            <td style="width: 241px">
                <asp:TextBox ID="cmail" runat="server" Width="240px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="cmail" ErrorMessage="Email Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 185px; text-align: right;">
                <font color="white">Message:</font></td>
            <td style="width: 241px">
                <asp:TextBox ID="cmessage" runat="server" Height="90px" TextMode="MultiLine" 
                    Width="240px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="cmessage" ErrorMessage="Message Required" 
                    ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 185px; text-align: right;">
                <font color="white">Security Question 9+3:</font></td>
            <td style="width: 241px">
                <asp:TextBox ID="cseurity" runat="server" Width="240px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="cseurity" ErrorMessage="Security Question Required" 
                    ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 241px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#FF66FF" 
                    Text="Submit" Width="101px" />
                <input id="Reset1" type="reset" value="Reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
       
    </table>
</form>
</asp:Content>

