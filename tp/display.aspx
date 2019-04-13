<%@ Page Title="" Language="C#" MasterPageFile="~/tp/tpmaster.master" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="tp_display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%;height:35px"><center> <asp:Button ID="Button1" runat="server" Text="Display all Queries" OnClick="Button1_Click" BackColor="#A9CA6E" BorderColor="Black" BorderStyle="Groove" ForeColor="White" />
    </div></center>

    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" ForeColor="Black" Text='<%# Eval("sno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Query">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("query") %>' ForeColor="Black"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Solution">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Update" />
        </Columns>
    </asp:GridView>

</asp:Content>

