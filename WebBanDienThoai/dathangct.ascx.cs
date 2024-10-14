using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanDienThoai
{
    public partial class dathangct : System.Web.UI.UserControl
    {
        csdlbdtDataContext db = new csdlbdtDataContext();
        public static SanPham ifDienThoai = new SanPham();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            LoadData();
        }
        void LoadData()
        {
            if (Request.QueryString["IdSanPham"] != "")
            {
                long Iddienthoai = Convert.ToInt64(Request.QueryString["IdSanPham"]);
                var data = from q in db.SanPhams
                           where q.ID_SANPHAM == Iddienthoai
                           select q;

                if (data != null && data.Count() > 0)
                {
                    ifDienThoai = data.First();
                    lblTenDT.Text ="Đặt Điện Thoại " + ifDienThoai.TEN_SANPHAM;
                }
            }
        }

        protected void btnMuaNgay_Click(object sender, EventArgs e)
        {
            DatHang1 ifdathang = new DatHang1();
            ifdathang.MaHang = ifDienThoai.ID_SANPHAM;
            ifdathang.SOLUONG = Convert.ToString(txtSoLuong.Text);
            ifdathang.HoTen = txeHoTen.Text;
            ifdathang.SoDT = Convert.ToInt64(txtSDT.Text);
            ifdathang.DiaChi = txtDiaChi.Text;
            ifdathang.TinhTrang = 0;


            db.DatHang1s.InsertOnSubmit(ifdathang);
            db.SubmitChanges();

            lblTenDT.Text= "Đã đặt điện thoại " + ifDienThoai.TEN_SANPHAM + "thành công !";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Thông Báo", "alert('Đơn hàng đang được xử lí !')", true);
        }
    }
}