<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="ManagerPage.aspx.vb" Inherits="WebApplication_For_Appointment_System.ManagerPage" MasterPageFile="Site.master" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head runat="server">
        <title>Barber Salon Manager Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            /* Define your CSS styles here */
            header {
                background-color: #333;
                color: white;
                text-align: center;
                padding: 10px;
            }

            header img {
                max-width: 50px;
                height: auto;
            }

            main {
                padding: 20px;
            }

            .button {
                display: inline-block;
                padding: 10px 20px; /* Adjust padding as needed */
                background-color: #007BFF; /* Change to your desired background color */
                color: #fff; /* Change to your desired text color */
                text-decoration: none;
                border: none;
                border-radius: 4px; /* Add rounded corners as desired */
                cursor: pointer;
                text-align: center;
            }

             .formbold-form-input {
    width: 10%;
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
             .formbold-form-inpu {
    width: 25%;
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


             .formbold-form-label {
    display: block;
    font-weight: 500;
    font-size: 16px;
    color: white;
    margin-bottom: 12px;
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
    width: 30%;
    cursor: pointer;
  }

                           .formbold {
    text-align: center;
    font-size: 16px;
    border-radius: 6px;
    padding: 14px 32px;
    border: none;
    font-weight: 600;
    background-color: #6a64f1;
    color: white;
    width: 20%;
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
            .formbold-mb-5 {
    margin-bottom: 20px;
  }
              .login-link, .register-link, .link{
            display: none;
        }
                  .custom-button {
        background-color: #333;
        color: white;
        font-weight: bold;
        width: 150px;
        height: 40px;
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
            /* Add more styles for sections and elements as needed */
        </style>
         <asp:Button ID="Button8" runat="server" Text="Logout" OnClick="LogoutButton_Click" CssClass="custom-button" style="float: right;" />

        <br />
        <br />
        <br />
         <header>
            <h1 style="font-size: 30px;">Welcome, Assia</h1>

    </head>
        <br />
    <body>
        <div>
            <asp:Label ID="lblDate" runat="server" CssClass="formbold-form-label" Text=" From Date:"></asp:Label>
            <asp:TextBox ID="txtFromDate" runat="server" CssClass="formbold-form-inpu" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="formbold-form-label" Text="To Date:"></asp:Label>
            <asp:TextBox ID="txtToDate" runat="server" CssClass="formbold-form-inpu" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblBarber" runat="server" CssClass="formbold-form-label" Text="Haircut:"></asp:Label>
            <asp:DropDownList ID="ddlBarber" runat="server" CssClass="formbold-form-input"></asp:DropDownList>
            <CR:CrystalReportViewer ID="ReportViewer" runat="server" AutoDataBind="true" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="formbold-btn" Text="Load Reports" />
        </div>     
        <div>
            <asp:Literal ID="resultLiteral" runat="server" EnableViewState="False"></asp:Literal>
        </div>
        <br />
        <asp:Button ID="Button4" runat="server" CssClass="formbold" Text="Update Haircuts" OnClick="Button4_Click" />

      
    </body>
        </header>

</asp:Content>
















