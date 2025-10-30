<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.master" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="admin_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container mt-5">
    <h2 class="text-center mb-4">All Users</h2>
    <table class="table table-bordered table-hover table-striped text-center align-middle">
        <thead class="table-dark">
            <tr>
                <th>User ID</th>
                <th>User Name</th>
                <th>User Email</th>
                <th>City</th>
                
                <th>Gender</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="rptrshow" runat="server">
                <ItemTemplate>
                
                
                <tr>
                    <td><%# Eval("uid") %></td>
                    <td><%# Eval("uname") %></td>
                    <td><%# Eval("email") %></td>
                    <td><%# Eval("city") %></td>
                    <td><%# Eval("gender") %></td>
                </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</div>
</asp:Content>

