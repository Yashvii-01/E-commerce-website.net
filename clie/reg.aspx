<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="client_reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Assests/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="w-50 mx-auto">
                

                    <div class="p-4 shadow-lg">
                        <div class="p-2  text-center">
                            <h4>Registration Form</h4>
                        </div>
                        

                            <!-- Username -->
                            <div class="mb-3">
                                <label for="txtUname" class="form-label">Username</label>
                                <asp:TextBox ID="txtUname" runat="server" class="form-control" placeholder="Enter username"></asp:TextBox>
                            </div>

                            <!-- Password -->
                            <div class="mb-3">
                                <label for="txtPassword" class="form-label">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="Enter password"></asp:TextBox>
                            </div>

                            <!-- Email -->
                            <div class="mb-3">
                                <label for="txtEmail" class="form-label">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server"  class="form-control" placeholder="Enter email"></asp:TextBox>
                            </div>

                            <!-- Profile (File Upload) -->
                            <div class="mb-3">
                                <label for="fuProfile" class="form-label">Profile Picture</label>
                                <asp:FileUpload ID="fuProfile" runat="server" CssClass="form-control"></asp:FileUpload>
                            </div>

                            <!-- Gender -->
                            <div class="mb-3">
                                <label class="form-label">Gender</label><br />
                                <asp:RadioButton ID="rbtnmale" runat="server" /> Male
                                <asp:RadioButton ID="rbtnfemale"  runat="server" /> Female
                               
                            </div>

                            <!-- City -->
                            <div class="mb-3">
                                <label for="ddlCity" class="form-label">City</label>
                                <asp:DropDownList ID="ddlCity" runat="server" class="form-select">
                                    <asp:ListItem Value="">Select City</asp:ListItem>
                                    <asp:ListItem Value="Mumbai">Mumbai</asp:ListItem>
                                    <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
                                    <asp:ListItem Value="Pune">Pune</asp:ListItem>
                                    <asp:ListItem Value="Bengaluru">Bengaluru</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <!-- Submit Button -->
                            <div>
                                <asp:Button ID="btnRegister" runat="server" Text="Register" 
                                    class="btn w-50 btn-dark" onclick="btnRegister_Click" />
                            </div>

                       
                    </div>

                </div>
            </div>
        
    </form>
</body>

</html>
