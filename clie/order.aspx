<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="client_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container mt-5">
    <h2 class="text-center mb-4">My Orders</h2>
    <asp:GridView ID="grdshow" runat="server" class="table" DataKeyNames="order_id" AutoGenerateColumns="false" OnRowDeleting="grdshow_RowDeleting">
    <Columns>
        <asp:TemplateField HeaderText="operation">
        <ItemTemplate>
        
        
        <asp:ImageButton  ID="btnDel" CommandName="Delete" Height="20px" Width="20px" runat="server"
                    ImageUrl="../Assests/Images/trash.png"/>
                    </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField HeaderText="order_id" DataField="order_id"/>
        <asp:BoundField HeaderText="order_date" DataField="order_date"/>
        <asp:BoundField HeaderText="price" DataField="price"/>
        <asp:BoundField HeaderText="product name" DataField="pname"/>
    </Columns>
    </asp:GridView>
    
</div>

</asp:Content>

