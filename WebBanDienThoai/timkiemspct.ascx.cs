using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanDienThoai
{
    public partial class timkiemspct : System.Web.UI.UserControl
    {
        csdlbdtDataContext db = new csdlbdtDataContext();
        public static List<SanPham> listSPDM = new List<SanPham>();
        public static List<SanPham> listSPM = new List<SanPham>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
                LoadDataspm();
            }
        }

        void LoadData()
        {
            try
            {
                string strTimKiem = Request.QueryString["giatri"]; // bắt lại chuỗi đã nhập
                var data = from q in db.SanPhams
                           where q.TEN_SANPHAM.Contains(strTimKiem) //trong tensp có chứ chữ(contains) đã nhập (strtimkiem)
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listSPDM = data.ToList();
                }
                lblTenDanhMuc.Text = "Kết Quả Tìm Sản Phẩm : " + strTimKiem; //thong báo + từ khóa tìm kiếm
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
            
        }

        void LoadDataspm()
        {
            try
            { 
            var data = from q in db.SanPhams
                       where q.SanPhamMoi == 1
                       select q;
            if (data != null && data.Count() > 0)
            {
                listSPM = data.ToList();
            }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }
    }
}