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
        csdlbdtDataContext db = new csdlbdtDataContext(); //tạo biến chứa csdl
        public static List<SanPham> listSPHot = new List<SanPham>(); //khai báo biế toàn cục chứa danh sách sp
        public static List<SanPham> listIPHONE = new List<SanPham>();
        public static List<SanPham> listOPPO = new List<SanPham>();
        public static List<SanPham> listRM = new List<SanPham>();
        public static List<SanPham> listSS = new List<SanPham>();
        public static List<SanPham> listVV = new List<SanPham>();
        public static List<SanPham> listXM = new List<SanPham>();     
        public static List<SanPham> listSPM = new List<SanPham>();
 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
                LoadDataiphone();
                LoadDataoppo();
                LoadDatarealmi();
                LoadDatasamsung();
                LoadDatavivo();
                LoadDataxiaomi();
                LoadDataspm();
            }
        }

        void LoadData()
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

        void LoadDataiphone()
        {
            try
            {
                var data = from q in db.SanPhams
                           where q.ID_DANHMUC == 2
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listIPHONE = data.ToList();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }

        void LoadDataoppo()
        {
            try
            {
                var data = from q in db.SanPhams
                           where q.ID_DANHMUC == 3
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listOPPO = data.ToList();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }

        void LoadDatarealmi()
        {
            try
            {
                var data = from q in db.SanPhams
                           where q.ID_DANHMUC == 4
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listRM = data.ToList();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }

        void LoadDatasamsung()
        {
            try
            {
                var data = from q in db.SanPhams
                           where q.ID_DANHMUC == 5
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listSS = data.ToList();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }

        void LoadDatavivo()
        {
            try
            {
                var data = from q in db.SanPhams
                           where q.ID_DANHMUC == 6
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listVV = data.ToList();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }

        void LoadDataxiaomi()
        {
            try
            {
                var data = from q in db.SanPhams
                           where q.ID_DANHMUC == 7
                           select q;
                if (data != null && data.Count() > 0)
                {
                    listXM = data.ToList();
                }
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