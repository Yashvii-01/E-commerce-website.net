<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

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
                            <h4>Login Here</h4>
                        </div>
                           <div class="mb-3">
                               <asp:Label ID="lblmsg" class="text-danger fs-4" runat="server" Text=""></asp:Label> <br />
                                <label for="txtEmail" class="form-label">Email</label> 
                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter email"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="txtPassword" class="form-label">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="Enter password"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Button ID="btnLogin" runat="server" Text="Login" 
                                    class="btn w-50 btn-dark" onclick="btnLogin_Click" />
                            </div>
                            
                       
                    </div>

                </div>
            </div>
    </form>
</body>
</html>
