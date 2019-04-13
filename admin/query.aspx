<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="admin_query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 208px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%;height:35px"><center> <asp:Button ID="Button1" runat="server" Text="Display all Queries" OnClick="Button1_Click" BackColor="#A9CA6E" BorderColor="Black" BorderStyle="Groove" ForeColor="White" /></div></center>
    <hr />
    <table style="text-align:center;border:hidden;column-rule-style:hidden;">
        <tr>
            <td align="center" style="color: #000000;width:200px">Select Technical Head :</td>
            <td align="center" style="width:200px;">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>-Technical Head-</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" style="width:100px"><asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#A9CA6E" OnClick="LinkButton1_Click">Send Query</asp:LinkButton></td>
        </tr>
    </table>
    <hr />
     <center><div style="width:100%"><asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
           <Columns>
               <asp:TemplateField HeaderText="ID">
                   <ItemTemplate>
                       <asp:Label ID="Label5" runat="server" Text='<%# Eval("sno") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Category">
                   <ItemTemplate>
                       <asp:Label ID="Label2" runat="server" Text='<%# Eval("cat") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Query">
                   <ItemTemplate>
                       <asp:Label ID="Label3" runat="server" Text='<%# Eval("query") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Select">
                   <ItemTemplate>
                       <asp:CheckBox ID="CheckBox1" runat="server" />
                   </ItemTemplate>
               </asp:TemplateField>
           </Columns>
           <FooterStyle BackColor="White" ForeColor="#333333" />
           <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="White" ForeColor="#333333" />
           <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F7F7F7" />
           <SortedAscendingHeaderStyle BackColor="#487575" />
           <SortedDescendingCellStyle BackColor="#E5E5E5" />
           <SortedDescendingHeaderStyle BackColor="#275353" />
       </asp:GridView>
       </div></center>
</asp:Content>

