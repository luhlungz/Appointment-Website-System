<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="WebApplication_For_Appointment_System.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <style>
        /* Change text color to black */
        body {
            color: black;
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
            background-image: url('image/black.jpg'); /* Replace 'path/to/your/background-image.jpg' with the actual path to your background image */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif; /* Move font-family to body selector to avoid repetition */
        }

        /* Increase font size */
        body, label, input, textarea, address, strong, a {
            font-size: 20px; /* You can adjust the size as needed */
        }

        /* You can apply these styles to other elements as needed */
        label, input, textarea {
            color: white;
        }

             header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>

    <p></p>
    <header>
    <address>
        <p style="color: black;">
        <strong>Address:</strong>
        </p>
        Peck Road<br />
        South Beach <br />
        Durban<br />
        4001<br />
    </address>
    <br />

    <p style="color: black;">
    <strong>Feel free to contact us if you have any questions or inquiries:</strong>
   </p>
    <address>
        <strong>Email:</strong><a href="mailto:assia@gmail.com">kiwasidevipsalon@gmail.com</a><br />
        <strong>Contact:</strong><a href="mailto:0837246020">083 724 6020</a>
    </address>
        </header>
</asp:Content>



