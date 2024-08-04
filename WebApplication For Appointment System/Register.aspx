<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.vb" Inherits="WebApplication_For_Appointment_System.Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <body>
    <header>
    <div class="formbold-mb-5">
        <asp:Label ID="lblFirstName" runat="server" Text="Name:" CssClass="formbold-form-label"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server" placeholder="Enter Name" CssClass="formbold-form-input"></asp:TextBox>
    </div>
    <div class="formbold-mb-5">
        <asp:Label ID="lblSurname" runat="server" Text="Surname:" CssClass="formbold-form-label"></asp:Label>
        <asp:TextBox ID="surname" runat="server" placeholder="Enter Surname" CssClass="formbold-form-input"></asp:TextBox>
    </div>
    <div class="formbold-mb-5">
        <asp:Label ID="lblPhone" runat="server" Text="Phone Number:" CssClass="formbold-form-label"></asp:Label>
        <asp:TextBox ID="phone" runat="server" placeholder="Enter your phone number" CssClass="formbold-form-input"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regexPhoneValidator" runat="server"
            ControlToValidate="phone"
            ValidationExpression="^0[0-9]{9}$"
            Display="Dynamic"
            CssClass="formbold-error-message"
            ErrorMessage="Phone number must start with '0' and be 10 digits in length."
        />
    </div>
    <div class="formbold-mb-5">
        <asp:Label ID="lblEmail" runat="server" Text="Email Address:" CssClass="formbold-form-label"></asp:Label>
        <asp:TextBox ID="email" runat="server" TextMode="Email" placeholder="Enter your email" CssClass="formbold-form-input"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regexEmailValidator" runat="server"
            ControlToValidate="email"
            ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
            Display="Dynamic"
            CssClass="formbold-error-message"
            ErrorMessage="Invalid email format. Please include special characters like @ or ."
        />
    </div>
          <div class="formbold-mb-5">
            <asp:Label ID="lblAddress" runat="server" Text="Physical Address:" CssClass="formbold-form-label"></asp:Label>
            <asp:TextBox ID="address" runat="server" placeholder="Enter your address" CssClass="formbold-form-input"></asp:TextBox>
        </div>
    <div class="formbold-mb-5">
        <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="formbold-form-label"></asp:Label>
        <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Enter your password" CssClass="formbold-form-input"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
            CssClass="text-danger"
            ErrorMessage="The password field is required."
        />
    </div>
    <div class="formbold-mb-5">
        <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" CssClass="formbold-form-label"></asp:Label>
        <asp:TextBox ID="confirmPassword" runat="server" TextMode="Password" placeholder="Confirm your password" CssClass="formbold-form-input"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword"
            CssClass="text-danger" Display="Dynamic"
            ErrorMessage="The confirm password field is required."
        />
        <asp:CompareValidator ID="passwordCompareValidator" runat="server"
            ControlToCompare="password"
            ControlToValidate="confirmPassword"
            CssClass="text-danger" Display="Dynamic"
            ErrorMessage="Passwords do not match. Please confirm your password."
        />
    </div>
    <div>
        <asp:Button ID="btnRegister" runat="server" Text="Confirm Registration" CssClass="formbold-btn" OnClick="btnRegister_Click" />
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




