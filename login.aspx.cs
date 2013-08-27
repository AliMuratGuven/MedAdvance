using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Web.Security;

namespace Deneme
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //input control
        bool save_Control()
        {
            bool statu = false;
            if (txt_SaveName.Text == string.Empty)
            {
                save_err.InnerText = "Adınızı yazınız.";
            }
            else if (txt_SaveSurname.Text == string.Empty)
            {
                save_err.InnerText = "Soyadınızı yazınız";
            }
            else if (txt_SaveEmail.Text == string.Empty)
            {
                save_err.InnerText = "E-posta adresini yazınız.";
            }
            else if (txt_Savepass.Text == string.Empty)
            {
                save_err.InnerText = "Parolanızı yazınız.";
            }
            else if (txt_Savepass.Text.Length < 5)
            {
                save_err.InnerText = "Parolanız en az beş haneli olmalıdır.";
            }
            else if (txt_Savepass1.Text == string.Empty)
            {
                save_err.InnerText = "Parolanızı tekrar ediniz";
            }
            else if (txt_Savepass1.Text != txt_Savepass.Text)
            {
                save_err.InnerText = "Parolalar uyuşmuyor";
            }
            else
            {
                statu = true;
            } return statu;
        }
        bool login_Control()
        {
            bool statu = false;
            if (txt_EmailLogin.Text == string.Empty)
            {
                log_err.InnerText = "E-posta adresinizi yazınız.";
            }
            else if (txt_PassLogin.Text == string.Empty)
            {
                log_err.InnerText = "Parolanızı yazınız";
            }else 
            {
                statu = true;
            }
            return statu;
        }
        //Admin Save
        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (!save_Control())
            {
                save_inf.Visible = false;
                save_err.Visible = true;
            }
            else
            {
              
            }
        }
        // Admin session open
        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (!login_Control())
            {
                log_err.Visible = true;
            }
            else
            {
              
            }
        }
    }
}