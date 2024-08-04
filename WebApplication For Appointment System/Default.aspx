<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication_For_Appointment_System._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
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
    <div style="background-image: url(''); background-size: cover; background-repeat no-repeat; background-attachment: fixed; font-size: xx-large; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #0000FF; table-layout: fixed;">
        <div style="font-family: Arial; font-size: large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: uppercase; color: #008000; text-align: center;">
            <h3 style="color:white">WELCOME TO KIWASIDE VIP SALON</h3>
        </div>
        <!-- Image Section -->
        <div>
            <img src="image/NAOB-Twitter-Post.png" alt="Description of the image" style="width: 952px; height: auto; margin: 0 auto; display: block;" />
            <!-- Additional content goes here -->
        </div>
    </div>
</asp:Content>

