<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="chadminpass.aspx.cs" Inherits="admin_chadminpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="pic" style="height:140px;width:100%;padding-top:20px; background-color: #B5DF6B;" class="wrapper row3">
        <center>
        <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/demo/avatar/user.png" BorderColor="#99CC00" BorderStyle="Groove" /></center></div>
        <div id="detail" style="padding-top:30px;">
            <table style="text-align:center;border:hidden;column-rule-style:hidden; color: #000000;">
                <tr>
                    <td class="auto-style3">Username:</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                <tr>
                    <td>Current Password:</td>
                    <td align="center">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    </tr>
            </table>
            </div>
    <div id="pass" style="padding-top:20px;">
        <table style="text-align:center; color: #000000;column-rule-style:hidden;border-style:hidden;bo" border="0">
            <tr>
                <td>Old Password:</td>
                <td align="center">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Field Can't Be Empty" Font-Size="X-Small" ForeColor="#990000"></asp:RequiredFieldValidator>
          </td>
                      </tr>
                    <tr>
                <td>New Password:</td>
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Field Can't be Empty" Font-Size="X-Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
                </tr>
                    <tr>
                <td>Confirm Password:</td>
                <td align="center">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="*Password didn't Matched" Font-Size="X-Small" ForeColor="#990000"></asp:CompareValidator>
                        </td>
                </tr>
        <tr><td align="center" colspan="3"><asp:Button ID="Button1" runat="server" Text="Change Password" BackColor="#B5DF6B" BorderColor="Black" BorderStyle="Groove" ForeColor="White" OnClick="Button1_Click" /></td></tr>
            </table>
        </div>
</asp:Content>

