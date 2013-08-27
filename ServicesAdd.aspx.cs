using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibTbl;
using LibJob;
using System.IO;

namespace MedAdvance
{
    public partial class ServicesAdd : System.Web.UI.Page
    {
        enum Languace
        {
            Turkish,English,Deutsch,Arabic
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLanguage();
            }
        }
        bool inputControl()
        {
            bool statu = false;
            if (txt_title.Text == "")
            {
                err.InnerText = "Başlık Giriniz";
            }
            else if (ddl_cat.SelectedIndex == 0)
            {
                err.InnerText = "Hizmet İçin Categori Seçiniz";
            }
            else if (FCKeditor1.Value == "")
            {
                err.InnerText = "Hizmet Açıklamasını Yazınız.";
            }
            else
            {
                statu = true;
            }
            return statu;
        }
        void GetParentServices()
        {
            job_Services services=new job_Services();
            
            ddl_Services.DataSource = services.getServicesParent();
            ddl_Services.DataTextField = "Title";
            ddl_Services.DataValueField = "ID";
            ddl_Services.DataBind();
            ddl_Services.Items.Insert(0,new ListItem("Hizmet Seçiniz","0"));
        }
        void GetLanguage()
        {
           string[] lang= Enum.GetNames(typeof(Languace));
           foreach (String item in lang)
           {
               ddl_Lang.Items.Add(item);
           }
           ddl_Lang.Items.Insert(0, new ListItem("Dil Seçiniz", "0"));
        }
           
        protected void servicesSave(object sender, EventArgs e)
        {
            if (!inputControl())
            {
                err.Visible = true;
            }
            else
            {
                err.Visible = false;
                int parent = 0;
                string message = "";
                string path = "";
                if (fu_Service.HasFile)
                {
                    fu_Service.SaveAs(Server.MapPath("/theme/images/services/" + fu_Service.FileName));
                    path
                        = fu_Service.FileName;
                }

                if (ddl_cat.SelectedIndex == 1)
                {
                    parent = Convert.ToInt32(ddl_Services.SelectedValue);
                }
                job_Services sercice = new job_Services();
                sercice.setServiceSave(out message, new tbl_Services
                {
                    ParentID = parent,
                    Title = txt_title.Text,
                    Article = FCKeditor1.Value,
                    ImagePath = path
                });
                suc.Visible = true;
                suc.InnerText = message;
            }
        }

        protected void ddl_cat_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_cat.SelectedIndex == 1)
            {
                dv_ServicesCat.Visible = true;
                GetParentServices();
            }
            else
            {
                dv_ServicesCat.Visible
                    = false;
            }
        }
    }
}