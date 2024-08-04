<%@ Page Title="About Us" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="WebApplication_For_Appointment_System.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
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
        }

        /* Change font family to a specific font */
        body {
            font-family: Arial, sans-serif;
        }

        /* You can apply these styles to other elements as needed */
        label, input, textarea {
            color: white;
            font-family: Arial, sans-serif;
        }

         /* Change text color to black for content inside ContentPlaceHolder */
        #MainContent {
            color: black;
        }
            header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
<header>
<p style="color: black;">
    <strong>Quality, service, and style, all at a fantastic price.</strong> 
</p>
<p style="color: white;">
    We believe that with the right team, the price and the right products, your perfect barbershop experience should just fall into place - like the perfect cut. We prove it every day.
</p>
<p style="color: black;">
    <strong>An affordable salon experience you can trust</strong>
</p>
<p style="color: white;">
    In July 2018, Asia Hakizimana opened Kiwa Side Vip in South Point, Durban, with the goal of creating an affordable barbershop experience that was accessible to everyone. Today, we are one of Durbanʼs busiest full-service hair care barbershops.
</p>

    <br />

   
     <div class="image-container">
        <div>
            <img src="image/vip1.jpg" alt="Description of the image" style="width: 650px; height: auto;margin-right: 100px;" />
           
            <img src="image/vip3.jpg" alt="Description of the image" style="width: 650px; height: auto;" /></div>

        <div>
            &nbsp;<!-- Additional content goes here --></div>
    </div>

</header>
</asp:Content>


