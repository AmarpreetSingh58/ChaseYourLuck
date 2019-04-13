<%@ Page Title="" Language="C#" MasterPageFile="~/tp/tpmaster.master" AutoEventWireup="true" CodeFile="tphome.aspx.cs" Inherits="tp_tphome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="pic" style="height:140px;width:100%;padding-top:20px; background-color: #B5DF6B;" class="wrapper row3">
        <center>
        <asp:Image ID="Image1" runat="server"  ImageUrl="~/th/images/demo/avatar/th.png" BorderColor="#99CC00" BorderStyle="Groove" /></center></div>
        <div id="detail" style="padding-top:30px;">
            <table style="text-align:center;border:hidden;column-rule-style:hidden;color:black;">
                <tr>
                    <td class="auto-style3" style="width:50%;">Username:</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                <tr>
                    <td>Current Password:</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    </tr>

                </table>
            </div>
    
</asp:Content>

