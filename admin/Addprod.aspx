<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.master" AutoEventWireup="true" CodeFile="Addprod.aspx.cs" Inherits="admin_Addprod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="mb-4">Add New Product</h2>
    <div class="card shadow-sm" >
        <div class="card-body">
            <div class="mb-3">
                <label class="form-label">Product Id:</label>
                <asp:TextBox ID="txtpid" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Product Name</label>
                <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Price</label>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Image</label>
                <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label class="form-label">Description</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnSave" runat="server" Text="Save Product" 
                CssClass="btn btn-outline-primary" onclick="btnSave_Click" />
            <asp:Button ID="btndelete" runat="server" Text="Delete Product" 
                CssClass="btn btn-outline-primary" onclick="Button1_Click" />
            <asp:Button ID="btnupd" runat="server" Text="Update Product" 
                CssClass="btn btn-outline-primary" onclick="btnupd_Click"/>
            &nbsp;&nbsp;
            <br />
            <br />
            <br />
            <table border="1" class="table table-bordered border-dark">
                <asp:Repeater ID="rptrshow" runat="server">
                <HeaderTemplate>
                    <thead>
                        <tr>
                            <th>Pid</th>
                            <th>Product name</th>
                            <th>Product image</th>
                            <th>Product price</th>
                            <th>Product description</th>
                        </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tbody>
                        <tr>
                            <td><%# Eval("prod_id") %></td>
                            <td><%# Eval("pname") %></td>
                            <td>
                                <img src="../Assests/Images/<%# Eval("pimg") %>" height="200px" width="200px" />
                            </td>
                            <td><%# Eval("price") %></td>
                            <td><%# Eval("pdesc") %></td>
                        </tr>
                    </tbody>
                </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </div>
</asp:Content>

