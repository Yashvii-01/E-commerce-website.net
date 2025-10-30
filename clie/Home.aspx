<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="client_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <img src="../Assests/Images/main_bg.jpg" class="d-block w-100" alt="Banner 1">
         <section class="py-5 bg-light">
  <div class="container">
    <div class="row align-items-center">
      
      <!-- Left Side Content -->
      <div class="col-md-6">
        <h1 class="text-decoration-underline">About Our Interior Store</h1>
        <p class="fs-5 mt-4">
          Welcome to <strong>My Mini Interior Shop</strong>, your trusted source for premium interior products. 
          From elegant furniture to modern decor, we provide items that blend beauty and functionality. 
          Our mission is to help you create spaces that reflect your style and comfort.
        </p>
        <p class="fs-5">
          Whether you're redesigning your home or adding a touch of elegance to your office, 
          we offer products crafted with quality and care. Shop with us and transform your interiors today!
        </p>
        <a href="#" class="btn btn-dark">Learn More</a>
      </div>
      
      <!-- Right Side Image -->
      <div class="col-md-6 text-center">

        <img src="../Assests/Images/BACK.png" alt="About Interior Store" class="img-fluid rounded shadow">
      </div>
      
    </div>
  </div>
</section>
        <div class="container my-5">

            <h2 class="bg-dark text-white p-3 mb-4">Featured Products</h2>
            <div class="row">
                <asp:Repeater ID="rptrshow" runat="server">
                    <ItemTemplate>
                           <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <img src="../Assests/Images/<%# Eval("pimg") %>" class="object-fit-cover card-img-top" alt="Product 1">
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("pname") %></h5>
                            <p class="card-text">&#8377; <%# Eval("price") %></p>
                            <p class="card-text text-capitalize"><%# Eval("pdesc") %></p>
                            <%--<a href="#" class="btn btn-primary">Add to Cart</a>--%>
                        </div>
                    </div>
                </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        
        
</asp:Content>

