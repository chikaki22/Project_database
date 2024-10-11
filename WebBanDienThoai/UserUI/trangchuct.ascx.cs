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
        public static List<SanPham> listSPHot = new List<SanPham>();
 
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        void LoadData()
        {
            var data = from q in db.SanPhams
                       where q.HOT == 1
                       select q;  
            if (data!=null && data.Count()>0)
            {  
                listSPHot = data.ToList();
            }
        }
    }
}