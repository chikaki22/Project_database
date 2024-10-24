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