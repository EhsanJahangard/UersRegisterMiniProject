<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayInfo.aspx.cs" Inherits="UersRegister.View.DisplayInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <script src="../Scripts/bootstrap.esm.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>

    <title>سایت اکتیو</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body {
            margin: 0;
        }

        /* Style the header */
        .header {
            background-color: #f1f1f1;
            padding: 20px;
            text-align: center;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                <h1>به سایت فروشگاه خوش آمدید</h1>
            </div>
            <div dir="rtl" class="alert-primary">
               
              
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/View/AddUser.aspx" CssClass="btn btn-primary" runat="server">ثبت اطلاعات</asp:HyperLink>
                <br />
            </div>
            <div class="body" dir="ltr" aria-atomic="False" aria-autocomplete="none" aria-disabled="False" aria-required="False">




               



                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource" GridLines="Horizontal" Width="958px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="password" HeaderText="رمز عبور" SortExpression="password" />
                        <asp:BoundField DataField="email" HeaderText="ایمیل" SortExpression="email" />
                        <asp:BoundField DataField="username" HeaderText="نام کاربری" SortExpression="username" />
                        <asp:BoundField DataField="address" HeaderText="آدرس" SortExpression="address" />
                        <asp:BoundField DataField="gender" HeaderText="جنسیت" SortExpression="gender" />
                        <asp:BoundField DataField="phone" HeaderText="تلفن" SortExpression="phone" />
                        <asp:BoundField DataField="family" HeaderText="نام خانوادگی" SortExpression="family" />
                        <asp:BoundField DataField="name" HeaderText="نام" SortExpression="name" />
                        <asp:BoundField DataField="ID" HeaderText="کد" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:registerConnectionString4 %>" DeleteCommand="DELETE FROM [tbUserRegister] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tbUserRegister] ([name], [family], [address], [gender], [phone], [email], [username], [password]) VALUES (@name, @family, @address, @gender, @phone, @email, @username, @password)" SelectCommand="SELECT * FROM [tbUserRegister]" UpdateCommand="UPDATE [tbUserRegister] SET [name] = @name, [family] = @family, [address] = @address, [gender] = @gender, [phone] = @phone, [email] = @email, [username] = @username, [password] = @password WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="family" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="family" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>

    </form>
</body>
</html>
