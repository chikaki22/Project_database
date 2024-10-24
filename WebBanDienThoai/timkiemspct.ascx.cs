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
        csdlbdtDataContext g = new csdlbdtDataContext();
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
            string strTimKiem = Request.QueryString["giatri"];
            var data = from q in db.SanPhams
                       where q.TEN_SANPHAM.Contains(strTimKiem)
                       select q;
            if (data != null && data.Count() > 0)
            {
                listSPDM = data.ToList();
            }

            lblTenDanhMuc.Text = "Kết Quả Tìm Sản Phẩm : " + strTimKiem;
        }
        void LoadDataspm()
        {
            var data = from q in g.SanPhams
                       where q.SanPhamMoi == 1
                       select q;
            if (data != null && data.Count() > 0)
            {
                listSPM = data.ToList();
            }
        }
    }
}