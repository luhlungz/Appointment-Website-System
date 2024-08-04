<%@ Page Title="Manager Dashboard" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagerDashboard.aspx.vb" Inherits="WebApplication_For_Appointment_System.ManagerDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manager Dashboard</h2>
    <p>Welcome, Manager! Please choose where you want to go:</p>
    <div class="dashboard-options">
        <asp:HyperLink ID="lnkManagerPage" runat="server" NavigateUrl="ManagerPage.aspx">Manager Page</asp:HyperLink>
        <asp:HyperLink ID="lnkAppointmentPage" runat="server" NavigateUrl="AppointmentPage.aspx">Appointment Page</asp:HyperLink>
    </div>
</asp:Content>

