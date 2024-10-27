using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanDienThoai
{
    public partial class dangnhapadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            csdlbdtDataContext db = new csdlbdtDataContext();
            var data = from q in db.CauHinhDNs
                       where q.TenBien == "UserAdmin" && q.GiaTri == txtUser.Text
                       select q;
            if (data != null && data.Count()>0)
            {
                var datax = from x in db.CauHinhDNs
                            where x.TenBien == "Password" && x.GiaTri == txtMK.Text
                            select x;
                if(datax != null && datax.Count()>0)
                {
                    Session["username"] = txtUser.Text;
                    Session["password"] = txtMK.Text;
                    Response.Redirect("TrangAdmin.aspx");
                }
                else
                {
                    lblThongBaoDN.Text = "Sai Mat Khau";
                }
            }
            else
            {
                lblThongBaoDN.Text = "Sai Ten Dang Nhap";
            }
        }
    }
}