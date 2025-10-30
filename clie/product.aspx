<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="client_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Product Display Page -->
    <div class="container py-5">
        <h2 class="text-center mb-5">Our Products</h2>

        <div class="row">
         
            <asp:Repeater ID="rptrshow" runat="server">
            
                
           
                <ItemTemplate>
                    <div class="col-md-4 mb-4">
                        <div class="card h-100 shadow-sm border-1">
                            <!-- Product Image -->
                            <img src='<%# "../Assests/Images/" + Eval("pimg") %>' class="card-img-top" alt='<%# Eval("pname") %>' style="height: 250px;object-fit: cover;">
                            
                            <!-- Product Details -->
                            <div class="card-body text-center">
                                <h5 class="card-title"><%# Eval("pname") %></h5>
                                <p class="card-text text-muted"><%# Eval("pdesc") %></p>
                                <h6 class="text-success">₹ <%# Eval("price") %></h6>
                            </div>
                           
                            <!-- Add to Cart Button -->
                            <div class="card-footer bg-white border-0 text-center">
                                
                                <asp:Button ID="btncart" class="btn btn-dark btn-sm" runat="server" 
                                    Text="Add to Cart" CommandArgument='<%# Eval("prod_id") %>' onclick="btncart_Click" />
                                
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                
            </asp:Repeater>
            
        </div>
    </div>
</asp:Content>

