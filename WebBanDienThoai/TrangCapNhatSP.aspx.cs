using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanDienThoai
{
    public partial class TrangCapNhatSP : System.Web.UI.Page
    {
        csdlbdtDataContext db = new csdlbdtDataContext();
        public static SanPham ifDienThoai = new SanPham();

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
                    long Iddienthoai = Convert.ToInt64(Request.QueryString["IdSanPham"]);
                    var data = from q in db.SanPhams
                               where q.ID_SANPHAM == Iddienthoai
                               select q;

                    if (data != null && data.Count() > 0)
                    {
                        ifDienThoai = data.First();
                        lblThongBao.Text = "Bạn đang cập nhật sản phẩm : " + ifDienThoai.TEN_SANPHAM;
                        txtTenSP.Text = ifDienThoai.TEN_SANPHAM;
                        txtGia.Text = ifDienThoai.GIA;
                        txtCauHinh.Text = ifDienThoai.CAUHINH;
                        txtMoTa.Text = ifDienThoai.MOTASANPHAM;
                        FCKChiTiet.Value = HttpUtility.HtmlDecode(ifDienThoai.ChiTietSanPham);
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }

        protected void btnCapNhap_Click(object sender, EventArgs e)
        {
            long idSanPham = Convert.ToInt64(ifDienThoai.ID_SANPHAM);
            var data = from q in db.SanPhams
                       where q.ID_SANPHAM == idSanPham 
                       select q; 
            if(data != null)
            {
                SanPham ifcapnhat = data.First();

                ifcapnhat.TEN_SANPHAM = txtTenSP.Text;
                ifcapnhat.GIA = txtGia.Text;
                ifcapnhat.CAUHINH = txtCauHinh.Text;
                ifcapnhat.MOTASANPHAM = txtMoTa.Text;

                if(fileHinhAnh.HasFile)
                {
                    ifcapnhat.ANH = fileHinhAnh.FileName;
                    fileHinhAnh.SaveAs(Server + fileHinhAnh.FileName);
                }

                ifcapnhat.ChiTietSanPham = HttpUtility.HtmlEncode(FCKChiTiet.Value);

                db.SubmitChanges();
                lblThongBao.Text = "Sản phẩm " + ifDienThoai.TEN_SANPHAM + " đã được cập nhật !";
            }
        }
    }
}