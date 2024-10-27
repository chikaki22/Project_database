using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanDienThoai
{
    public partial class danhmucspct : System.Web.UI.UserControl
    {
        csdlbdtDataContext db = new csdlbdtDataContext();
        public static List<SanPham> listSPDM = new List<SanPham>();
        public static List<SanPham> listSPHot = new List<SanPham>();
        public static List<SanPham> listSPM = new List<SanPham>();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
            LoadDatahot();
            LoadDataspm();
        }

        void LoadData()
        {
            try //kiem tra loi sai url
            {
                long iddm = Convert.ToInt64(Request.QueryString["IdDanhMuc"]); // gán biến phụ bắt iddanhmuc
                var data = from q in db.SanPhams
                           where q.ID_DANHMUC == iddm
                           select q;
                if (data != null && data.Count() > 0) //kiểm tra nếu đúng id thì đổ sp từ csdl lên giao diện
                {
                    listSPDM = data.ToList();
                }
                //lấy id trong bảng danhmuc
                var dataDM = from q in db.DanhMuc1s
                             where q.ID_DANHMUC == iddm
                             select q;
                if (dataDM != null) 
                {
                    lblTenDanhMuc.Text = dataDM.First().TEN_DANHMUC; //thông báo danh mục đã click
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("error.html");
            }
        }

        void LoadDataspm()
        {
            try
            {
                //lấy từ bảng sp, những spm
                var data = from q in db.SanPhams
                           where q.SanPhamMoi == 1
                           select q;
                if (data != null && data.Count() > 0)// nếu đúng đổ lên giao diện
                {
                    listSPM = data.ToList();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }

        void LoadDatahot()
        {
            try
            {
                var data = from q in db.SanPhams
                           where q.HOT == 1
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listSPHot = data.ToList();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }
    }
}