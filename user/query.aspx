<%@ Page Title="" Language="C#" MasterPageFile="~/user/userMaster.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="user_query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="text-align:center;width: 100%; height:350px;padding-top:20px">
            <tr>
                <td class="auto-style3" style="color: #000000;padding-top:20px;">Product No.</td>
                <td class="auto-style3" style="padding-top:20px;">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Field Can't Be Empty" Font-Size="X-Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="color: #000000;padding-top:20px;">Product Category</td>
                <td style="padding-top:20px;">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Smartwear</asp:ListItem>
                    </asp:DropDownList></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="color: #000000;padding-top:20px;">Query</td>
                <td style="padding-top:20px;">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Field Can't Be Empty " Font-Size="X-Small" ForeColor="#990000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align:center;padding-top:20px;">
                    <asp:Button ID="Button1" runat="server" Text="Submit Query" BackColor="#A9CA6E" BorderColor="Black" BorderStyle="Groove" ForeColor="White" OnClick="Button1_Click" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    
</asp:Content>

