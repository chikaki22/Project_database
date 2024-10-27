using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanDienThoai
{
    public partial class TrangAdmin : System.Web.UI.Page
    {
        csdlbdtDataContext db = new csdlbdtDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                LoadData();
                KiemTraDN();
        }
        void KiemTraDN()
        {
            
            
            if (Session["username"] != "" && Session["password"] != "") //kiểm tra user và mk có tồn tại ko
            {
                //xét username xem khớp vs csdl ko
                var data = from q in db.CauHinhDNs
                           where q.TenBien == "UserAdmin" && q.GiaTri == Session["username"]
                           select q;
                if (data != null && data.Count() > 0) // nếu nó khớp
                {
                    //kiểm tra mk khớp ko
                    var datax = from x in db.CauHinhDNs
                                where x.TenBien == "Password" && x.GiaTri == Session["password"]
                                select x;
                    if (datax == null && datax.Count() == 0) //sai mk
                    {
                        Response.Redirect("dangnhapadmin.aspx");
                    }
                }
                else //sai username 
                {
                    Response.Redirect("dangnhapadmin.aspx");
                }
            }
       
        }

        void LoadData()
        {
            try
            { 
            var data = from q in db.SanPhams
                       select q;
            if (data != null)
            {
                girdSanPham.DataSource = data.ToList(); //lấy dữ liệu lên
                girdSanPham.DataBind(); //đỗ dữ liệu ra
            }
            }
            catch (Exception ex)
            {
                Response.Redirect("error.html");
            }
        }

        protected void girdSanPham_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (((LinkButton)e.CommandSource).CommandName == "GetDelete") //kiểm tra nút nhấn là gì
            {
                long idselect = Convert.ToInt64(girdSanPham.DataKeys[e.Item.ItemIndex].ToString()); //bắt id sp khi click vào
                var data = from q in db.SanPhams
                           where q.ID_SANPHAM == idselect
                           select q;

                if (data != null)
                {
                    SanPham ifdt = data.First(); //lấy sp cần xóa
                    db.SanPhams.DeleteOnSubmit(ifdt); //xóa dl trong bảng cần xóa
                    db.SubmitChanges(); //xóa trong csdl

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ThongBao", "alert('Sản Phẩm " + ifdt.TEN_SANPHAM + " đã bị xóa !')", true);
                    // Kiểm tra số lượng sản phẩm còn lại 
                    if (girdSanPham.CurrentPageIndex > 0 && girdSanPham.Items.Count == 1)
                        {
                            girdSanPham.CurrentPageIndex--; // Giảm chỉ số trang nếu cần }  
                            LoadData(); // Tải lại dữ liệu }  
                        }
                    if (girdSanPham.Items.Count > 1)// nếu còn
                    {
                        LoadData();
                    }
                    
                    // Xử lý cập nhật sản phẩm 
                    if (((LinkButton)e.CommandSource).CommandName == "GetUpdate")
                    {
                        string idcapnhat = girdSanPham.DataKeys[e.Item.ItemIndex].ToString();
                        Response.Redirect("TrangCapNhatSP.aspx?IdSanPham=" + idcapnhat);
                    }

                }
            }
            // Xử lý cập nhật sản phẩm 
            if (((LinkButton)e.CommandSource).CommandName == "GetUpdate")
            {
                string idcapnhat = girdSanPham.DataKeys[e.Item.ItemIndex].ToString();
                Response.Redirect("TrangCapNhatSP.aspx?IdSanPham=" + idcapnhat);
            }
        }

        protected void girdSanPham_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            girdSanPham.CurrentPageIndex = e.NewPageIndex; //e hành động đổi số trang
            LoadData();
        }
    }
}