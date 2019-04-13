<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="adminAccount.aspx.cs" Inherits="admin_adminAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><div style="width:80%"><p style="text-align:center; font-size:30px;padding-top:15px; font-family: 'Lithos Pro Regular'; color: #000000;"> Create Technical Account</p>
        <table align="center" style="width:100%; font-size:15px; color: #333333; background-color:#DEDEDE;text-align:center;">
        <tr>
            <td class="auto-style1">Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Field Can't Be Empty" Font-Size="10px" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Email-Id</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox></td>
            <td class="auto-style1" style="color: #000000"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Field Can't Be Empty     " Font-Size="10px" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Invalid Format" Font-Size="10px" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Username</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Field Can't Be Empty" Font-Size="10px" ForeColor="#CC3300" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Field Can't Be Empty" Font-Size="10px" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="*Password didn't Matched" Font-Size="10px" ForeColor="#CC3300"></asp:CompareValidator>
            </td>
        </tr>
       
        <tr>
            <td>Account Type</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem Value="TH">TH</asp:ListItem>
                    <asp:ListItem Value="TP">TP</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*Select a Proper Type" Font-Size="X-Small" ForeColor="#990000"></asp:RequiredFieldValidator>
            </td>
            </tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Create Account" BorderStyle="Groove" ForeColor="White" BackColor="#A9CA6E" BorderColor="Black" OnClick="Button1_Click" /></td>
                <td>&nbsp;</td>
        </tr>
    </table>
            </div></center>
</asp:Content>

