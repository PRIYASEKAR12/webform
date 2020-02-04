<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="onlineLeave.register" %>

<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
</head>  
<body>  
    <form id="form1" runat="server">  
        <div>  
            <table class="auto-style1">  
                <tr>  
                    <td>Name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td>ID</td>  
                     <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td>PhoneNumber</td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>City</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>  
                            <asp:ListItem Text="Mysore" Value="Mysore"></asp:ListItem>  
                            <asp:ListItem Text="Hubli" Value="hubli"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  
                
                <tr>  
                    <td>Gmail</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                 <tr>  
                    <td>Designation</td>  
                    <td>  
                        <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>  
                    </td>  
                </tr>   
                <tr>  
                    <td>  
                        <asp:Button ID="submit" runat="server" Text="Button" />  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>  
</body>  
</html> 
