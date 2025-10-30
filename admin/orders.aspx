<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.master" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="admin_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container mt-5">
    <h2 class="text-center mb-4">My Orders</h2>
    <table class="table table-bordered table-hover table-striped text-center align-middle">
        <thead class="table-dark">
            <tr>
                <th>Order ID</th>
                <th>Order Date</th>
                <th>User Name</th>
                <th>Product Name</th>
                <th>Price</th>

            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="rptrshow" runat="server">
                <ItemTemplate>
                
                
                <tr>
                    <td><%# Eval("order_id") %></td>
                    <td><%# Eval("order_date") %></td>
                    <td><%# Eval("uname") %></td>
                    <td><%# Eval("pname") %></td>
                    <td><%# Eval("price") %></td>

                </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</div>
</asp:Content>

