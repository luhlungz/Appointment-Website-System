<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UpdatePage.aspx.vb" Inherits="WebApplication_For_Appointment_System.UpdatePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <asp:Button ID="Button5" runat="server" Text="Logout" OnClick="Button_Click" CssClass="custom-button" style="float: right;" />

     <asp:Button ID="Button9" runat="server" Text="Back" OnClick="BackButton_Click" CssClass="custom-button" />
    <br />
    <br />
    <body>
           <header>
        <h1 style="font-size: 30px;">Update Haircuts</h1>
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" style="margin-left: 0px" Width="1492px" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Haircut_ID" DataSourceID="SqlDataSource1" Height="266px">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Haircut_ID" HeaderText="Haircut_ID" InsertVisible="False" ReadOnly="True" SortExpression="Haircut_ID" />
                    <asp:BoundField DataField="Haircut_Name" HeaderText="Haircut_Name" SortExpression="Haircut_Name" />
                    <asp:BoundField DataField="Haircut_Price" HeaderText="Haircut_Price" SortExpression="Haircut_Price" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupWst14ConnectionString %>" DeleteCommand="DELETE FROM [Haircut] WHERE [Haircut_ID] = @original_Haircut_ID AND (([Haircut_Name] = @original_Haircut_Name) OR ([Haircut_Name] IS NULL AND @original_Haircut_Name IS NULL)) AND (([Haircut_Price] = @original_Haircut_Price) OR ([Haircut_Price] IS NULL AND @original_Haircut_Price IS NULL))" InsertCommand="INSERT INTO [Haircut] ([Haircut_Name], [Haircut_Price]) VALUES (@Haircut_Name, @Haircut_Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Haircut_ID], [Haircut_Name], [Haircut_Price] FROM [Haircut]" UpdateCommand="UPDATE [Haircut] SET [Haircut_Name] = @Haircut_Name, [Haircut_Price] = @Haircut_Price WHERE [Haircut_ID] = @original_Haircut_ID AND (([Haircut_Name] = @original_Haircut_Name) OR ([Haircut_Name] IS NULL AND @original_Haircut_Name IS NULL)) AND (([Haircut_Price] = @original_Haircut_Price) OR ([Haircut_Price] IS NULL AND @original_Haircut_Price IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Haircut_ID" Type="Int32" />
                    <asp:Parameter Name="original_Haircut_Name" Type="String" />
                    <asp:Parameter Name="original_Haircut_Price" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Haircut_Name" Type="String" />
                    <asp:Parameter Name="Haircut_Price" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Haircut_Name" Type="String" />
                    <asp:Parameter Name="Haircut_Price" Type="Decimal" />
                    <asp:Parameter Name="original_Haircut_ID" Type="Int32" />
                    <asp:Parameter Name="original_Haircut_Name" Type="String" />
                    <asp:Parameter Name="original_Haircut_Price" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    <asp:SqlDataSource runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupWst14ConnectionString %>" DeleteCommand="DELETE FROM [Haircut] WHERE [Haircut_ID] = @original_Haircut_ID AND (([Haircut_Name] = @original_Haircut_Name) OR ([Haircut_Name] IS NULL AND @original_Haircut_Name IS NULL)) AND (([Haircut_Price] = @original_Haircut_Price) OR ([Haircut_Price] IS NULL AND @original_Haircut_Price IS NULL))" InsertCommand="INSERT INTO [Haircut] ([Haircut_Name], [Haircut_Price]) VALUES (@Haircut_Name, @Haircut_Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Haircut_ID], [Haircut_Name], [Haircut_Price] FROM [Haircut]" UpdateCommand="UPDATE [Haircut] SET [Haircut_Name] = @Haircut_Name, [Haircut_Price] = @Haircut_Price WHERE [Haircut_ID] = @original_Haircut_ID AND (([Haircut_Name] = @original_Haircut_Name) OR ([Haircut_Name] IS NULL AND @original_Haircut_Name IS NULL)) AND (([Haircut_Price] = @original_Haircut_Price) OR ([Haircut_Price] IS NULL AND @original_Haircut_Price IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Haircut_ID" Type="Int32" />
            <asp:Parameter Name="original_Haircut_Name" Type="String" />
            <asp:Parameter Name="original_Haircut_Price" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Haircut_Name" Type="String" />
            <asp:Parameter Name="Haircut_Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Haircut_Name" Type="String" />
            <asp:Parameter Name="Haircut_Price" Type="Decimal" />
            <asp:Parameter Name="original_Haircut_ID" Type="Int32" />
            <asp:Parameter Name="original_Haircut_Name" Type="String" />
            <asp:Parameter Name="original_Haircut_Price" Type="Decimal" />
        </UpdateParameters>
        </asp:SqlDataSource>
         <img src="">
    </header>
</body>
  
<style>
         /* Add background image to the body element */
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

               .custom-button {
        background-color: #333;
        color: white;
        font-weight: bold;
        width: 150px;
        height: 40px;
    }
                     .login-link, .register-link, .link{
            display: none;
        }
    </style>  
</asp:Content>
