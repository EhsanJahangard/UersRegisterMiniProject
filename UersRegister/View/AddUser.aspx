<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="UersRegister.View.AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <script src="../Scripts/bootstrap.esm.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#txtName , #txtFamily , #txtAddress').keypress(function (e) {
                var myregex = new RegExp("^[\u0600-\u06FF\uFB8A\u067E\u0686\u06AF]+$");
                if (myregex.test(e.key)) {
                    return true;
                }
                e.preventDefault();
                return false;
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            $("#txtEmail").keypress(function (event) {
                var ew = event.which;
                if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)
                {
                    return (true)
                }
                if (ew == 32)
                    return true;
                if (48 <= ew && ew <= 57)
                    return true;
                if (65 <= ew && ew <= 90)
                    return true;
                if (97 <= ew && ew <= 122)
                    return true;
                return false;
            });

        });

    </script>


    <script type="text/javascript">
        $(function () {
            $("#txtUserName").keypress(function (event) {
                var ew = event.which;
                if (ew == 32)
                    return true;
                if (48 <= ew && ew <= 57)
                    return true;
                if (65 <= ew && ew <= 90)
                    return true;
                if (97 <= ew && ew <= 122)
                    return true;
                return false;
            });

        });

    </script>


    <title>سایت اکتیو</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="container ">
                <div class="row text-center">
                    <div style="background-color: lightskyblue">
                       

                        <h1>به سایت ... خوش آمدید</h1>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col">
                        <div class="card text-center">
                            <div class="card-heading" style="background-color: aliceblue">
                                <h4>ورود اطلاعات کاربری
                                </h4>
                            </div>
                            <div class="card-body" dir="rtl">


                                <table align="right">
                                    <tr>
                                        <td>
                                            <h5>نام</h5>
                                        </td>
                                        <td>

                                            <asp:TextBox ID="txtName" CssClass="form-control border border-primary" runat="server" placeholder="لطفا نام را فارسی تایپ کنید" Width="263px"></asp:TextBox>

                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>نام خانوادگی</h5>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFamily" Lang="fa" CssClass="form-control   border border-primary" runat="server" placeholder="لطفا نام خانوادگی را فارسی تایپ کنید" Width="261px"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>تلفن</h5>
                                        </td>
                                        <td>

                                            <asp:TextBox ID="txtTell" CssClass="form-control   border border-primary " TextMode="Number" runat="server" placeholder="0912-333-66-99" Width="263px"></asp:TextBox>

                                            <asp:RegularExpressionValidator ValidationExpression="^(\(?\s*\d{4}\s*[\)\-\.]?\s*)?[2-9]\d{2}\s*[\-\.]\s*\d{2}\s*[\-\.]\s*\d{2}$" runat="server" ControlToValidate="txtTell" ErrorMessage="لطفا تلفن را صحیح وارد کنید"></asp:RegularExpressionValidator>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <h5>آدرس</h5>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAddress" CssClass="form-control  border border-primary" runat="server" placeholder="لطفاآدرس را فارسی تایپ کنید" Width="264px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>جنسیت</h5>
                                        </td>
                                        <td>
                                            <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text="زن" OnCheckedChanged="RadioButton1_CheckedChanged" /><br />
                                            <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text="مرد" OnCheckedChanged="RadioButton2_CheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>نام کاربری</h5>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtUserName" CssClass="form-control  border border-primary" runat="server" placeholder="لطفا نام کاربری را فارسی تایپ کنید" Width="264px"></asp:TextBox>



                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>ایمیل</h5>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtEmail" CssClass="form-control  border border-primary" runat="server" placeholder="expample@gmail.com" TextMode="Email" Width="263px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5>کلمه عبور</h5>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPass" CssClass="form-control  border border-primary" runat="server" placeholder="Password length 6 characters " TextMode="Password" Width="263px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <br />

                                </table>


                            </div>
                            <div class="card-footer" style="background-color: aliceblue">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" CssClass=" border border-danger" ErrorMessage="پر کردن نام اجباری میباشد"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFamily" CssClass=" border border-danger" ErrorMessage="پر کردن نام خانوادگی اجباری میباشد"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" CssClass=" border border-danger" ErrorMessage="پر کردن نام کاربری اجباری میباشد"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPass" CssClass=" border border-danger" ErrorMessage="پر کردن رمز عبور اجباری میباشد"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" CssClass=" border border-danger" ErrorMessage="پر کردن ایمیل اجباری میباشد"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" CssClass=" border border-danger" ErrorMessage="پر کردن آدرس اجباری میباشد"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTell" CssClass=" border border-danger" ErrorMessage="پر کردن تلفن اجباری میباشد"></asp:RequiredFieldValidator>

                                <p align="center">
                                    <asp:Button ID="btnAdd" BackColor="#00cc00" CssClass="form-control" runat="server" Text="ثبت اطلاعات" OnClick="btnAdd_Click" Width="293px" Height="31px" Font-Size="Larger" />
                                </p>
                            </div>

                        </div>


                    </div>
                </div>
            </div>




        </div>
        <hr />
        <div>
            <%--<asp:Image ID="Image1"  ImageUrl="~/Images/paszamine_com_1835_Full_HD.jpg" runat="server" />--%>
            <%--     <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Example textarea</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>--%>
        </div>
    </form>
</body>
</html>
