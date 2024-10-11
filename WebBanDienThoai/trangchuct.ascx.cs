using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanDienThoai
{
    public partial class trangchuct : System.Web.UI.UserControl
    {
        csdlbdtDataContext db = new csdlbdtDataContext();
        public static List<SanPham> listSP = new List<SanPham>();
 
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        void LoadData()
        {
            var data = from q in db.SanPhams
                       where q.ID_DANHMUC == 2
                       select new
                       {
                           q.TEN_SANPHAM,
                           q.GIA,
                           q.ANH,          
                       };

            listSP = data.Select(q => new SanPham
            {
                TEN_SANPHAM = q.TEN_SANPHAM,
                GIA = q.GIA,
                ANH = q.ANH
            }).ToList();

            // Kiểm tra số lượng sản phẩm đã lấy được  
            if (listSP.Count == 0)
            {
                // Ghi log hoặc thông báo để biết rằng không có sản phẩm hot nào được tìm thấy  
                System.Diagnostics.Debug.WriteLine("Không tìm thấy sản phẩm khuyến mãi hot nào.");
            }
        }
    }
}