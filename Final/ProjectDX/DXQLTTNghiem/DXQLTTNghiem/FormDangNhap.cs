using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;


namespace DXQLTTNghiem
{
    public partial class FormDangNhap : Form
    {
        public FormDangNhap()
        {
            InitializeComponent();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void FormDangNhap_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'quanLyThiTracNghiem_1DataSet.V_DanhSachCoSo' table. You can move, or remove it, as needed.
            this.v_DanhSachCoSoTableAdapter.Fill(this.quanLyThiTracNghiem_1DataSet.V_DanhSachCoSo);
            tENCSComboBox.SelectedIndex = 1;
            tENCSComboBox.SelectedIndex = 0;

        }

        private void tENCSComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Program.servername = tENCSComboBox.SelectedValue.ToString();
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (txtLogin.Text.Trim() == "")
            {
                MessageBox.Show("Tên đăng nhập không được trống!", "Lỗi đăng nhập", MessageBoxButtons.OK);
                txtLogin.Focus();
                return;
            }
            Program.mlogin = txtLogin.Text;
            Program.password = txtPass.Text;
            
            // dang nhap that bai
            if (Program.KetNoi() == 0) return;
            //MessageBox.Show("Đăng nhập thành công!", " ", MessageBoxButtons.OK);
            SqlDataReader myReader;
            Program.mloginDN = Program.mlogin;
            Program.passwordDN = Program.password;
            
            if(rdSinhVien.Checked)
            {
                String sql = "exec SP_KTSV_DANGNHAP '" + txtLogin.Text + "'";
                int kq = Program.ExecSqlNonQuery(sql);
                if(kq == 1)
                {
                    return;
                }
            }
            string strLenh;
            if(rdGiaoVien.Checked)
            {
                strLenh = "exec SP_LAY_TT_DANGNHAP '" + Program.mlogin + "'";
            }
            else
            {
                strLenh = "EXEC SP_LAY_TT_DANGNHAP_SV  '" + Program.mlogin + "' , " + "'" + Program.mSV + "'";
            }
            
            myReader = Program.ExecSqlDataReader(strLenh);
            if (myReader == null) return;
            myReader.Read();

            Program.username = myReader.GetString(0); // lay user name
            if (Convert.IsDBNull(Program.username))
            {
                MessageBox.Show("Login bạn nhập không có quyền truy cập dữ liệu\n", " ", MessageBoxButtons.OK);
                return;
            }
            Program.mHoten = myReader.GetString(1);
            Program.mGroup = myReader.GetString(2);
            myReader.Close();
            Program.conn.Close();
            Program.FormMain.MAGV.Text = "Mã giáo viên: " + Program.username;
            Program.FormMain.HOTEN.Text = "Họ tên: " + Program.mHoten;
            Program.FormMain.NHOM.Text = "Nhóm: " + Program.mGroup;
            
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

    }
}
