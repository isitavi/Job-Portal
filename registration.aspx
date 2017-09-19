<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p style="font-size: x-large">
        Registration Page</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 212px; font-size: medium">
                <strong><font color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Basic Info</font></strong></td>
            <td style="width: 184px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Name:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="name" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="name" ErrorMessage="Full Name is Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="namevalidator" runat="server" 
                    ControlToValidate="name" ErrorMessage="Not Valid" ForeColor="#9999FF" 
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Father Name:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="fname" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="fname" ErrorMessage="Father Name Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="fname" ErrorMessage="Not Valid" ForeColor="#9999FF" 
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Mother Name:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="mname" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="mname" ErrorMessage="Mother Name Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="mname" ErrorMessage="Not Valid" ForeColor="#9999FF" 
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Address:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="address" runat="server" Height="60px" Width="270px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="address" ErrorMessage="Address Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Post Code:</font>&nbsp;&nbsp;</td>
            <td style="width: 184px">
                <asp:TextBox ID="postcode" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="postcode" ErrorMessage="Post Code Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="postcode" ErrorMessage="Not Acceptable" ForeColor="#9999FF" 
                    ValidationExpression="\d{4}(-\d{4})?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Phone No:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="phoneno" runat="server" Width="270px" 
                    ontextchanged="phoneno_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="phoneno" ErrorMessage="Phone No Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="phoneno" ErrorMessage="Not Valid" ForeColor="#9999FF" 
                    ValidationExpression="^(?:\+?88)?01[15-9]\d{8}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Email:</font><font color="red">*</font>&nbsp;&nbsp;</td>
            <td style="width: 184px">
                <asp:TextBox ID="email" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="email" ErrorMessage="Email Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="emailvalidator" runat="server" 
                    ControlToValidate="email" ErrorMessage="Email isn't Valid" ForeColor="#9999FF" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right; height: 266px;">
                <font color="white">Date of Birth:</font><font color="red">*</font></td>
            <td style="width: 184px; height: 266px;">
                <asp:TextBox ID="caltext" runat="server" Width="270px"></asp:TextBox>
                <asp:Calendar ID="calendar" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="170px" 
                    onselectionchanged="calendar_SelectionChanged" ShowGridLines="True" 
                    Visible="False" Width="270px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                <asp:Button ID="Button3" runat="server" Font-Bold="True" ForeColor="#FF99FF" 
                    Height="26px" onclick="Button3_Click" Text="Calendar" Width="70px" />
            </td>
            <td style="height: 266px">
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                    ControlToValidate="caltext" ErrorMessage="Required Date of Birth" 
                    ForeColor="#9999FF" Visible="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Nationality:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="national" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="national" ErrorMessage="Nationality Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Religion:</font></td>
            <td style="width: 184px">
                <asp:DropDownList ID="religion" runat="server" Width="270px">
                    <asp:ListItem>Select Religion</asp:ListItem>
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Muslim</asp:ListItem>
                    <asp:ListItem>Christian</asp:ListItem>
                    <asp:ListItem>Buddho</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="religion" ErrorMessage="Religion Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Language:</font><font color="red">*</font></td>
            <td style="width: 184px" id="language">
                <asp:TextBox ID="lang" runat="server" Width="270px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="lang" ErrorMessage="Select Language" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Marital Status:</font></td>
            <td style="width: 184px">
                <asp:DropDownList ID="marital" runat="server" Width="270px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="marital" ErrorMessage="Marital Status Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td 
                style="width: 212px; font-size: medium; text-align: right;">
                <font color="white">Educational Qualification</font></td>
            <td style="width: 184px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">University:</font>&nbsp;&nbsp;</td>
            <td style="width: 184px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Institute Name:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="uni" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="uni" ErrorMessage="Institute Name Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Dept. Name:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="deptname" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="deptname" ErrorMessage="Dept Name Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">CGPA</font><font color="red">*</font>&nbsp;:&nbsp;</td>
            <td style="width: 184px">
                <asp:TextBox ID="cgpa" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="cgpa" ErrorMessage="CGPA Required" ForeColor="#9999FF" 
                    ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Passing Year:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:DropDownList ID="upass" runat="server" Width="270px">
                    <asp:ListItem>Select Year</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="upass" ErrorMessage="Passing Year Required" 
                    ForeColor="#9999FF" ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">College(H.S.C):</font></td>
            <td style="width: 184px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right; height: 22px;" 
                class="sidebar_item">
                <font color="white">Institution Name:</font><font color="red">*</font></td>
            <td style="width: 184px; height: 22px;">
                <asp:TextBox ID="colins" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="colins" ErrorMessage="Institution Name Required" 
                    ForeColor="#9999FF" ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Group:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:DropDownList ID="cgroup" runat="server" Width="270px">
                    <asp:ListItem>Select Group</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Arts</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="cgroup" ErrorMessage="Group Required" 
                    ForeColor="#9999FF" ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">GPA:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="colres" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                    ControlToValidate="colres" ErrorMessage="GPA Required" 
                    ForeColor="#9999FF" ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Session:</font></td>
            <td style="width: 184px">
                <asp:TextBox ID="colses" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="colses" ErrorMessage="Session Required" 
                    ForeColor="#9999FF" ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 212px; text-align: right;">
                <font color="white">Passing Year:</font><font color="red">*</font></td>
            <td style="width: 184px">
                <asp:DropDownList ID="colpass" runat="server" Width="270px">
                    <asp:ListItem>Select Year</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                    ControlToValidate="colpass" ErrorMessage="Passing Year Required" 
                    ForeColor="#9999FF" ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>

    <table style="width: 100%">
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">School(S.S.C):</font></td>
            <td style="width: 166px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">Institute Name:</font><font color="red">*</font></td>
            <td style="width: 166px">
                <asp:TextBox ID="sins" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                    ControlToValidate="sins" ErrorMessage="Institution Name Required" 
                    ForeColor="#9999FF" ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">Group:</font><font color="red">*</font></td>
            <td style="width: 166px">
                <asp:DropDownList ID="scgroup" runat="server" Width="270px">
                    <asp:ListItem>Select Group</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Arts</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="scgroup" ErrorMessage="Group Name Required" 
                    ForeColor="#9999FF" ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">Session:</font></td>
            <td style="width: 166px">
                <asp:TextBox ID="scses" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                    ControlToValidate="scses" ErrorMessage="Session Required" 
                    ForeColor="#9999FF" ValidationGroup="infoValidateGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">Passing Year:</font><font color="red">*</font></td>
            <td style="width: 166px">
                <asp:DropDownList ID="scpass" runat="server" Width="270px">
                    <asp:ListItem>Select Year</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                    ControlToValidate="scpass" ErrorMessage="Passing Year Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">GPA:</font><font color="red">*</font></td>
            <td style="width: 166px">
                <asp:TextBox ID="scgpa" runat="server" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                    ControlToValidate="scgpa" ErrorMessage="GPA Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td 
                style="width: 213px; font-size: medium; text-align: right;">
                <font color="white">Other Qualification:</font></td>
            <td style="width: 166px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">Working Experience:</font><font color="red">*</font></td>
            <td style="width: 166px">
                <asp:DropDownList ID="workexp" runat="server" Width="270px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                    ControlToValidate="workexp" ErrorMessage="Working Experience Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">Years:</font><font color="red">*</font></td>
            <td style="width: 166px">
                <asp:DropDownList ID="workyear" runat="server" Width="270px">
                    <asp:ListItem>Select Year</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                    ControlToValidate="workyear" ErrorMessage="Experience Year Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">Publications:</font><font color="red">*</font></td>
            <td style="width: 166px">
                <asp:DropDownList ID="pub" runat="server" Width="270px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                    ControlToValidate="pub" ErrorMessage="Publications Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 213px; text-align: right;">
                <font color="white">Publications No:</font><font color="red">*</font></td>
            <td style="height: 20px; width: 166px;">
                <asp:DropDownList ID="pubno" runat="server" Width="270px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4+</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                    ControlToValidate="pubno" ErrorMessage="Publications No Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">Interest:</font></td>
            <td style="width: 166px">
                <asp:TextBox ID="interest" runat="server" Height="95px" Width="270px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                    ControlToValidate="interest" ErrorMessage="Interested Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;" class="sidebar_item">
                <font color="white">Password:</font><font color="red">*</font></td>
            <td style="width: 166px">
                <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                    ControlToValidate="pass" ErrorMessage="Password Required" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;" class="sidebar_item">
                <font color="white">Confirm Password:</font><font color="red">*</font></td>
            <td style="width: 166px">
                <asp:TextBox ID="repass" runat="server" TextMode="Password" Width="270px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                    ControlToValidate="repass" ErrorMessage="Retype Password" 
                    ForeColor="#9999FF"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="pass" ControlToValidate="repass" 
                    ErrorMessage="Password don't Match" ForeColor="#9999FF" 
                    ValidationGroup="infoValidateGroup"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px; text-align: right;" class="sidebar_item">
                <font color="white">Upload an Image</font> <font color="red">*</font></td>
            <td style="width: 166px">
                <asp:FileUpload ID="ImageUploader" runat="server" Height="20px" Width="220px" />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#FF99FF" 
                    onclick="Button1_Click1" Text="Upload" Width="86px" />
            </td>
            <td>
                <asp:Image ID="Image" runat="server" Width="100px" />
            </td>
        </tr>
    </table>

    <table style="width: 100%">
        <tr>
            <td style="width: 213px; text-align: right;">
                <font color="white">Country:</font> <font color="red">*</font></td>
            <td style="width: 272px">
                
                <asp:TextBox ID="country" runat="server" Width="270px"></asp:TextBox>
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                    ControlToValidate="country" ErrorMessage="Country Required" ForeColor="#9999FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 213px">
                &nbsp;</td>
            <td style="width: 272px">
                <asp:Button ID="submit" runat="server" Font-Bold="True" ForeColor="#FF99CC" 
                    Text="Submit" Width="84px" 
                    onclick="submit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <p>  
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
		Already a member ?
		<a href="login.aspx"> Go and log in </a>
	</p>
    </form>

</asp:Content>

