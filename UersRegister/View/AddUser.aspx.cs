using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using UersRegister.Context;

namespace UersRegister.View
{
    public partial class AddUser : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            if (!IsFormValid())
                Response.Write("<script> alert ('validation fail'); </script>");
            else
            {
                try
                {
                    #region AddUser
                    tbUserRegister tbUser = new tbUserRegister()
                    {
                        name = txtName.Text,
                        family = txtFamily.Text,
                        phone = txtTell.Text,
                        address = txtAddress.Text,
                        email = txtEmail.Text,
                        username = txtUserName.Text,
                        password = txtPass.Text,
                        gender = this.gender
                    };
                    registerEntities1 context = new registerEntities1();
                    context.tbUserRegisters.Add(tbUser);
                    if (context.SaveChanges() > 0)
                    {
                        Response.Write("<script> alert('ثبت نام با موفقیت انجام شد'); </script>");
                        ClearForm();
                        Response.Redirect("~/View/DisplayInfo.aspx");
                    }
                    #endregion
                }
                catch
                {
                    Response.Write("<script> alert(' !ثبت نام انجام نشد'); </script>");
                    Response.Redirect("~/View/AddUser.aspx");

                }


            }
           




        }
        private bool IsFormValid()
        {
            #region GetValue
            string name = txtName.Text;
            string family = txtFamily.Text;
            string username = txtUserName.Text;
            string tell = txtTell.Text;
            string password = txtPass.Text;
            string address = txtAddress.Text;
            string email = txtEmail.Text;
            #endregion
            #region Validation
            if ((name == "" && family == "") && (password == "" && address == "") && (username == "" && tell == "") && (email == "" && gender == ""))
            {


                Response.Write("<script> alert('لطفا مقادیر همه فیلدها را پر کنید'); </script>");
                return false;
            }
            else if (name == "")
            {
                Response.Write("<script> alert('وارد کردن نام الزامی می باشد'); </script>");
                return false;
            }
            else if (family == "")
            {
                Response.Write("<script> alert('وارد کردن نام خانوادگی الزامی می باشد'); </script>");
                return false;
            }
            else if (tell == "")
            {
                Response.Write("<script> alert('وارد کردن تلفن الزامی می باشد'); </script>");
                return false;
            }
            else if (address == "")
            {
                Response.Write("<script> alert('وارد کردن آدرس الزامی می باشد'); </script>");
                return false;
            }

            else if (email == "")
            {
                Response.Write("<script> alert('وارد کردن ایمیل الزامی می باشد'); </script>");
                return false;
            }
            else if (gender == "")
            {
                Response.Write("<script> alert('وارد کردن جنسیت الزامی می باشد'); </script>");
                return false;
            }
            else if (password == "")
            {
                Response.Write("<script> alert('وارد کردن رمز عبور الزامی می باشد'); </script>");
                return false;
            }
            else if (username == "")
            {
                Response.Write("<script> alert('وارد کردن نام کاربری الزامی می باشد'); </script>");
                return false;
            }
            else if (password.Length < 6 || password.Length > 6)
            {
                Response.Write("<script> alert('طول رمز عبور 6 کاراکتر می باشد'); </script>");
                return false;
            }
            else if (tell.Length < 14 || tell.Length > 14)
            {
                Response.Write("<script> alert('طول تلفن 11 رقم می باشد '); </script>");
                return false;
            }
            else if (username.Length < 4)
            {
                Response.Write("<script> alert('طول رمز عبور نمی تواند کمتر از 4 کاراکتر باشد '); </script>");
                return false;
            }
            else if (name.Length > 12)
            {
                Response.Write("<script> alert('طول نام نمی تواند بیش از 12 کاراکتر باشد '); </script>");
                return false;
            }
            else if (family.Length > 16)
            {

                Response.Write("<script> alert('طول نام خانوادگی نمی تواند بیش از 16 کاراکتر باشد '); </script>");
                return false;
            }
            #endregion

            return true;
        }


       void  ClearForm()
        {
            txtName.Text = txtFamily.Text = txtTell.Text = txtUserName.Text = txtAddress.Text = txtPass.Text = txtEmail.Text = gender = "";

        }


        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "زن";

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "مرد";
        }
    }
}