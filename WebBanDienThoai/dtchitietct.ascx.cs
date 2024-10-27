using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanDienThoai
{
    public partial class dtchitietct : System.Web.UI.UserControl
    {
        csdlbdtDataContext db = new csdlbdtDataContext();
        public static SanPham ifDienThoai = new SanPham(); //chỉ lấy 1 sp ko dùng list

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadData();
        }
        void LoadData()
        {
            try
            {
                if (Request.QueryString["IdSanPham"] != "")
                {
                    long Iddienthoai = Convert.ToInt64(Request.QueryString["IdSanPham"]); //khai báo biến phụ bắt id , đổi url sang số
                    var data = from q in db.SanPhams
                               where q.ID_SANPHAM == Iddienthoai //bắt id lại và so sánh với id đã khai báo
                               select q;

                    if (data != null && data.Count() > 0)
                    {
                        ifDienThoai = data.First(); // lấy 1 sp dùng first
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }
    }
}