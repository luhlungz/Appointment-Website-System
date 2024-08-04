<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UpdateHaircut.aspx.vb" Inherits="WebApplication_For_Appointment_System.UpdateHaircut" %>

<!DOCTYPE html>
<header>
        <h1>Haircuts</h1>  
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <h2>Update Haircut List</h2>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" style="margin-left: 0px" Width="617px" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Haircut_ID" DataSourceID="SqlDataSource1">
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
    </form>
</body>

</html>
   <img src="">
    </header>
