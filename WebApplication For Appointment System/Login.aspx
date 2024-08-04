<%@ Page Title="Login" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.vb" Inherits="WebApplication_For_Appointment_System.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <body>
    <header>
    <div class="login-form">
        <div class="formbold-mb-5">
            <asp:Label ID="lblEmail" runat="server" Text="Email Address" CssClass="formbold-form-label"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email" CssClass="formbold-form-input"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regexEmailValidator" runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
                Display="Dynamic"
                CssClass="formbold-error-message"
                ErrorMessage="Invalid email format. Please include special characters like @ or ." />
        </div>
        <div class="formbold-mb-5">
            <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="formbold-form-label"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter your password" CssClass="formbold-form-input"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="formbold-btn" OnClick="btnLogin_Click" />
        </div>
        <asp:Label ID="lblError" runat="server" CssClass="error-message"></asp:Label>
    </div>
        </header>
        </body>
<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  body {
    font-family: "Inter", Arial, Helvetica, sans-serif;
  }
    .formbold-mb-5 {
    margin-bottom: 20px;
  }
  .formbold-pt-3 {
    padding-top: 12px;
  }
 
  .formbold-form-label {
    display: block;
    font-weight: 500;
    font-size: 16px;
    color: white;
    margin-bottom: 12px;
  }


  .formbold-form-input {
    width: 100%;
    padding: 12px 24px;
    border-radius: 6px;
    border: 1px solid #e0e0e0;
    background: white;
    font-weight: 500;
    font-size: 16px;
    color: #6b7280;
    outline: none;
    resize: none;
  }

  .formbold-btn {
    text-align: center;
    font-size: 16px;
    border-radius: 6px;
    padding: 14px 32px;
    border: none;
    font-weight: 600;
    background-color: #6a64f1;
    color: white;
    width: 100%;
    cursor: pointer;
  }

  .formbold--mx-3 {
    margin-left: -12px;
    margin-right: -12px;
  }
  .formbold-px-3 {
    padding-left: 12px;
    padding-right: 12px;
  }
  .flex {
    display: flex;
  }
  .flex-wrap {
    flex-wrap: wrap;
  }
  .w-full {
    width: 100%;
  }
  header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
        }
      body {
            color: black;
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
            background-image: url('image/black.jpg'); /* Replace 'path/to/your/background-image.jpg' with the actual path to your background image */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        
</style>
</asp:Content>




