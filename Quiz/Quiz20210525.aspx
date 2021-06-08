<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz20210525.aspx.cs" Inherits="Quiz.Quiz20210525" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="db" runat="server" ConnectionString="<%$ ConnectionStrings:SQLDataSourceCom %>" DeleteCommand="DELETE FROM [Stu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Stu] ([Id], [Name], [Chi], [Math], [Eng]) VALUES (@Id, @Name, @Chi, @Math, @Eng)" SelectCommand="SELECT * FROM [Stu]" UpdateCommand="UPDATE [Stu] SET [Name] = @Name, [Chi] = @Chi, [Math] = @Math, [Eng] = @Eng WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="db" OnRowCommand="gv_RowCommand" CellPadding="4" BackColor="White" BorderColor="#000000" BorderStyle="None" BorderWidth="3px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Chi" HeaderText="Chi" SortExpression="Chi" />
                    <asp:BoundField DataField="Math" HeaderText="Math" SortExpression="Math" />
                    <asp:BoundField DataField="Eng" HeaderText="Eng" SortExpression="Eng" />
                     <asp:ButtonField ButtonType="Button" CommandName="Add" Text="計算" />
                </Columns>
                <FooterStyle BackColor="#FFFFFF" ForeColor="#003399" />
                <HeaderStyle BackColor="#f2b8cd" Font-Bold="True" ForeColor="#ad1d52" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#FFFFFF" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:Label ID="lb_Show" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
