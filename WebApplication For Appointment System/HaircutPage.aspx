<%@ Page Title="HaircutPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HaircutPage.aspx.cs" Inherits="WebApplication_For_Appointment_System.HaircutPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<header>
        <h1 style="font-size: 30px;">Haircuts</h1>
    <asp:GridView runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Haircut_ID" DataSourceID="SqlDataSource1" ForeColor="Black" style="margin-left: 25px; margin-top: 0px;" Width="1406px" Height="188px">
        <Columns>
            <asp:BoundField DataField="Haircut_Name" HeaderText="Haircut_Name" SortExpression="Haircut_Name" />
            <asp:BoundField DataField="Haircut_Price" HeaderText="Haircut_Price" SortExpression="Haircut_Price" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        <img src=""
    </header>       
    <style>
        /* Add background image to the body element */
        body {
            background-image: url('image/black.jpg'); /* Replace 'image/black.jpg' with the actual image path */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
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

    </style>
  

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst14ConnectionString %>" SelectCommand="SELECT [Haircut_ID], [Haircut_Name], [Haircut_Price] FROM [Haircut]"></asp:SqlDataSource>
</asp:Content>


