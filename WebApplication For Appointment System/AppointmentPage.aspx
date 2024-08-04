<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AppointmentPage.aspx.vb" Inherits="WebApplication_For_Appointment_System.AppointmentPage" MasterPageFile="Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>Appointment Page</title>
    </head>
    <body>
       <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="LogoutButton_Click" CssClass="custom-button" style="float: right;" />

        <br />
        <br />
        <br />
        <header>
            <h1 style="font-size: 30px;">Welcome, <%= txtName.Text %></h1>
         <br />
         <br />
            <h2 style="font-size: 30px; color: black;">Make Appointment</h2>
       
        <br />
        <div class="formbold-form-wrapper">
            <div class="formbold-mb-5">
                <asp:Label ID="lblName" runat="server" CssClass="formbold-form-label" Text="Name:"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" CssClass="formbold-form-input" placeholder="Enter Name"></asp:TextBox>
            </div>
            <div class="formbold-mb-5">
                <asp:Label ID="lblBarber" runat="server" CssClass="formbold-form-label" Text="Barber:"></asp:Label>
                <asp:DropDownList ID="Barber" runat="server" CssClass="formbold-form-input" DataSourceID="SqlDataSource3" DataTextField="Barber_Name" DataValueField="Barber_ID"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst14ConnectionString %>" SelectCommand="SELECT * FROM [BarberTable]"></asp:SqlDataSource>
            </div>

            <div class="flex flex-wrap formbold--mx-3">
                <div class="w-full sm:w-half formbold-px-3">
                    <div class="formbold-mb-5 w-full">
                        <asp:Label ID="lblDate" runat="server" CssClass="formbold-form-label" Text="Date:"></asp:Label>
                        <asp:TextBox ID="txtDate" runat="server" CssClass="formbold-form-input" TextMode="Date"></asp:TextBox>
                    </div>
                </div>
                <div class="w-full sm:w-half formbold-px-3">
                    <div class="formbold-mb-5">
                        <asp:Label ID="lblTime" runat="server" CssClass="formbold-form-label" Text="Time:"></asp:Label>
                        <asp:DropDownList ID="txtTime" runat="server" CssClass="formbold-form-input">
                            <asp:ListItem Text="8:30" Value="8:30" />
                            <asp:ListItem Text="9:30" Value="9:30" />
                            <asp:ListItem Text="10:30" Value="10:30" />
                            <asp:ListItem Text="11:30" Value="11:30" />
                            <asp:ListItem Text="12:30" Value="12:30" />
                            <asp:ListItem Text="13:30" Value="13:30" />
                            <asp:ListItem Text="14:30" Value="14:30" />
                            <asp:ListItem Text="15:30" Value="15:30" />
                            <asp:ListItem Text="16:30" Value="16:30" />
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="flex flex-wrap formbold--mx-3">
                <div class="w-full sm:w-half formbold-px-3">
                    <div class="formbold-mb-5 w-full">
                        <asp:Label ID="lblHaircut" runat="server" CssClass="formbold-form-label" Text="Haircut:"></asp:Label>
                        <div class="formbold-mb-5">
                           <asp:DropDownList ID="Haircut" runat="server" CssClass="formbold-form-input" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Haircut_Name" DataValueField="Haircut_ID" onchange="updatePrice()"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst14ConnectionString %>" SelectCommand="SELECT * FROM [Haircut]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="formbold-mb-5">
                        <asp:Label ID="lblPrice" runat="server" CssClass="formbold-form-label" Text="Price:"></asp:Label>
                        <asp:DropDownList ID="Price" runat="server" CssClass="formbold-form-input" DataSourceID="SqlDataSource1" DataTextField="Haircut_Price" DataValueField="Haircut_ID" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst14ConnectionString %>" SelectCommand="SELECT Haircut_Name, Haircut_Price, Haircut_ID FROM Haircut WHERE (Haircut_Name = @name)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Haircut" Name="name" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <div>
            </div>
            <asp:Button ID="btnBookAppointment" runat="server" Text="Book Appointment" CssClass="formbold-btn" OnClick="btnBookAppointment_Click" />
        </div>
        <script type="text/javascript">
        function updatePrice() {
        // Get the selected value of the Haircut DropDownList
        var haircutId = document.getElementById('<%= Haircut.ClientID %>').value;

        // Find the Price DropDownList
        var priceDropdown = document.getElementById('<%= Price.ClientID %>');

        // Loop through the options of the Price DropDownList
        for (var i = 0; i < priceDropdown.options.length; i++) {
            // Check if the value of the current option matches the selected haircutId
            if (priceDropdown.options[i].value === haircutId) {
                // Set the selected index of the Price DropDownList to the matched index
                priceDropdown.selectedIndex = i;
                break;
            }
        }
    }
        </script>
</header>
    </body>
    </html>


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
    width: 50%;
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
        
        header img {
            max-width: 100px;
            height: auto;
        }
        
        main {
            padding: 20px;
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
        
</style>
    </asp:Content>
