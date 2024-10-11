using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanDienThoai
{
    public partial class trangchu : System.Web.UI.Page
    {
        csdlbdtDataContext db = new csdlbdtDataContext();
        public static List<DanhMuc1> listDM = new List<DanhMuc1>();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        void LoadData()
        {
            var data = from q in db.DanhMuc1s
                       where q.HIENTHI == 1
                       select q; 
            if (data!=null && data.Count()>0)
            {
                listDM = data.ToList();
            }
        }
    }
}