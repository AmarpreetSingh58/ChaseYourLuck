<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ulogin.aspx.cs" Inherits="ulogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row0" style="padding:50px" >
        <center><div style="width:50%;">
        <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" DestinationPageUrl="~/user/userHome.aspx" Font-Names="Verdana" Font-Size="10pt" OnAuthenticate="Login1_Authenticate" TitleText="User Login" UserNameLabelText="Username:">
            <CheckBoxStyle BackColor="#A9CA6E" HorizontalAlign="Center" VerticalAlign="Middle" />
            <HyperLinkStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <LabelStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2" style="color:#C2E565;font-weight:bold;font-size:20px;">User Login</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" ForeColor="Black">Username:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="* Field can't be Empty" Font-Size="X-Small" ForeColor="#990000" ToolTip="User Name is required." ValidationGroup="Login1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" ForeColor="Black">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="* Field can't be Empty" Font-Size="X-Small" ForeColor="#990000" ToolTip="Password is required." ValidationGroup="Login1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="background-color:#A9CA6E;" align="middle">
                                        <asp:CheckBox ID="RememberMe" runat="server" ForeColor="White" Text="Remember me next time." />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:#990000;">
                                        <asp:Literal ID="FailureText" runat="server" Text="Incorrect Username or Password " Visible="False" Mode="PassThrough"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" BackColor="#A9CA6E" BorderColor="Black" BorderStyle="Groove" CommandName="Login" ForeColor="White" Text="Log In" ValidationGroup="Login1" OnClick="LoginButton_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
            </asp:Login>
          </div><center>
        </div>
</asp:Content>

