
namespace DXQLTTNghiem
{
    partial class FormDangNhap
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label tENCSLabel;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormDangNhap));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnDangNhap = new System.Windows.Forms.Button();
            this.txtPass = new System.Windows.Forms.TextBox();
            this.txtLogin = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tENCSComboBox = new System.Windows.Forms.ComboBox();
            this.v_DanhSachCoSoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.quanLyThiTracNghiem_1DataSet = new DXQLTTNghiem.QuanLyThiTracNghiem_1DataSet();
            this.v_DanhSachCoSoTableAdapter = new DXQLTTNghiem.QuanLyThiTracNghiem_1DataSetTableAdapters.V_DanhSachCoSoTableAdapter();
            this.tableAdapterManager = new DXQLTTNghiem.QuanLyThiTracNghiem_1DataSetTableAdapters.TableAdapterManager();
            this.v_DanhSachCoSoBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.v_DanhSachCoSoBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.rdGiaoVien = new System.Windows.Forms.RadioButton();
            this.rdSinhVien = new System.Windows.Forms.RadioButton();
            tENCSLabel = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.v_DanhSachCoSoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyThiTracNghiem_1DataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.v_DanhSachCoSoBindingNavigator)).BeginInit();
            this.v_DanhSachCoSoBindingNavigator.SuspendLayout();
            this.SuspendLayout();
            // 
            // tENCSLabel
            // 
            tENCSLabel.AutoSize = true;
            tENCSLabel.Location = new System.Drawing.Point(149, 86);
            tENCSLabel.Name = "tENCSLabel";
            tENCSLabel.Size = new System.Drawing.Size(89, 22);
            tENCSLabel.TabIndex = 0;
            tENCSLabel.Text = "Tên cơ sở";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rdSinhVien);
            this.groupBox1.Controls.Add(this.rdGiaoVien);
            this.groupBox1.Controls.Add(this.btnThoat);
            this.groupBox1.Controls.Add(this.btnDangNhap);
            this.groupBox1.Controls.Add(this.txtPass);
            this.groupBox1.Controls.Add(this.txtLogin);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(tENCSLabel);
            this.groupBox1.Controls.Add(this.tENCSComboBox);
            this.groupBox1.Location = new System.Drawing.Point(114, 55);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(681, 440);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "ĐĂNG NHẬP";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(488, 229);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(138, 56);
            this.btnThoat.TabIndex = 7;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnDangNhap
            // 
            this.btnDangNhap.Location = new System.Drawing.Point(280, 229);
            this.btnDangNhap.Name = "btnDangNhap";
            this.btnDangNhap.Size = new System.Drawing.Size(138, 56);
            this.btnDangNhap.TabIndex = 6;
            this.btnDangNhap.Text = "Đăng nhập";
            this.btnDangNhap.UseVisualStyleBackColor = true;
            this.btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
            // 
            // txtPass
            // 
            this.txtPass.Location = new System.Drawing.Point(280, 153);
            this.txtPass.Name = "txtPass";
            this.txtPass.PasswordChar = '*';
            this.txtPass.Size = new System.Drawing.Size(346, 30);
            this.txtPass.TabIndex = 5;
            // 
            // txtLogin
            // 
            this.txtLogin.Location = new System.Drawing.Point(280, 118);
            this.txtLogin.Name = "txtLogin";
            this.txtLogin.Size = new System.Drawing.Size(346, 30);
            this.txtLogin.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(149, 168);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 22);
            this.label2.TabIndex = 3;
            this.label2.Text = "Mật khẩu";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(149, 127);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(124, 22);
            this.label1.TabIndex = 2;
            this.label1.Text = "Tên đăng nhập";
            // 
            // tENCSComboBox
            // 
            this.tENCSComboBox.DataSource = this.v_DanhSachCoSoBindingSource;
            this.tENCSComboBox.DisplayMember = "TENCS";
            this.tENCSComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.tENCSComboBox.FormattingEnabled = true;
            this.tENCSComboBox.Location = new System.Drawing.Point(280, 83);
            this.tENCSComboBox.Name = "tENCSComboBox";
            this.tENCSComboBox.Size = new System.Drawing.Size(346, 30);
            this.tENCSComboBox.TabIndex = 1;
            this.tENCSComboBox.ValueMember = "TENSERVER";
            this.tENCSComboBox.SelectedIndexChanged += new System.EventHandler(this.tENCSComboBox_SelectedIndexChanged);
            // 
            // v_DanhSachCoSoBindingSource
            // 
            this.v_DanhSachCoSoBindingSource.DataMember = "V_DanhSachCoSo";
            this.v_DanhSachCoSoBindingSource.DataSource = this.quanLyThiTracNghiem_1DataSet;
            // 
            // quanLyThiTracNghiem_1DataSet
            // 
            this.quanLyThiTracNghiem_1DataSet.DataSetName = "QuanLyThiTracNghiem_1DataSet";
            this.quanLyThiTracNghiem_1DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // v_DanhSachCoSoTableAdapter
            // 
            this.v_DanhSachCoSoTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.Connection = null;
            this.tableAdapterManager.UpdateOrder = DXQLTTNghiem.QuanLyThiTracNghiem_1DataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // v_DanhSachCoSoBindingNavigator
            // 
            this.v_DanhSachCoSoBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.v_DanhSachCoSoBindingNavigator.BindingSource = this.v_DanhSachCoSoBindingSource;
            this.v_DanhSachCoSoBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.v_DanhSachCoSoBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.v_DanhSachCoSoBindingNavigator.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.v_DanhSachCoSoBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.bindingNavigatorAddNewItem,
            this.bindingNavigatorDeleteItem,
            this.v_DanhSachCoSoBindingNavigatorSaveItem});
            this.v_DanhSachCoSoBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.v_DanhSachCoSoBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.v_DanhSachCoSoBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.v_DanhSachCoSoBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.v_DanhSachCoSoBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.v_DanhSachCoSoBindingNavigator.Name = "v_DanhSachCoSoBindingNavigator";
            this.v_DanhSachCoSoBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.v_DanhSachCoSoBindingNavigator.Size = new System.Drawing.Size(1200, 27);
            this.v_DanhSachCoSoBindingNavigator.TabIndex = 1;
            this.v_DanhSachCoSoBindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorAddNewItem
            // 
            this.bindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorAddNewItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorAddNewItem.Image")));
            this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";
            this.bindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorAddNewItem.Size = new System.Drawing.Size(29, 24);
            this.bindingNavigatorAddNewItem.Text = "Add new";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(45, 24);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorDeleteItem
            // 
            this.bindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorDeleteItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorDeleteItem.Image")));
            this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";
            this.bindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorDeleteItem.Size = new System.Drawing.Size(29, 24);
            this.bindingNavigatorDeleteItem.Text = "Delete";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(29, 24);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(29, 24);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 27);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator1";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 27);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(29, 24);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(29, 24);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator2";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 27);
            // 
            // v_DanhSachCoSoBindingNavigatorSaveItem
            // 
            this.v_DanhSachCoSoBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.v_DanhSachCoSoBindingNavigatorSaveItem.Enabled = false;
            this.v_DanhSachCoSoBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("v_DanhSachCoSoBindingNavigatorSaveItem.Image")));
            this.v_DanhSachCoSoBindingNavigatorSaveItem.Name = "v_DanhSachCoSoBindingNavigatorSaveItem";
            this.v_DanhSachCoSoBindingNavigatorSaveItem.Size = new System.Drawing.Size(29, 24);
            this.v_DanhSachCoSoBindingNavigatorSaveItem.Text = "Save Data";
            // 
            // rdGiaoVien
            // 
            this.rdGiaoVien.AutoSize = true;
            this.rdGiaoVien.Location = new System.Drawing.Point(280, 188);
            this.rdGiaoVien.Name = "rdGiaoVien";
            this.rdGiaoVien.Size = new System.Drawing.Size(109, 26);
            this.rdGiaoVien.TabIndex = 9;
            this.rdGiaoVien.TabStop = true;
            this.rdGiaoVien.Text = "Giáo viên";
            this.rdGiaoVien.UseVisualStyleBackColor = true;
            // 
            // rdSinhVien
            // 
            this.rdSinhVien.AutoSize = true;
            this.rdSinhVien.Location = new System.Drawing.Point(395, 188);
            this.rdSinhVien.Name = "rdSinhVien";
            this.rdSinhVien.Size = new System.Drawing.Size(105, 26);
            this.rdSinhVien.TabIndex = 10;
            this.rdSinhVien.TabStop = true;
            this.rdSinhVien.Text = "Sinh viên";
            this.rdSinhVien.UseVisualStyleBackColor = true;
            // 
            // FormDangNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 22F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1200, 658);
            this.Controls.Add(this.v_DanhSachCoSoBindingNavigator);
            this.Controls.Add(this.groupBox1);
            this.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "FormDangNhap";
            this.Text = "FormDangNhap";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.FormDangNhap_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.v_DanhSachCoSoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.quanLyThiTracNghiem_1DataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.v_DanhSachCoSoBindingNavigator)).EndInit();
            this.v_DanhSachCoSoBindingNavigator.ResumeLayout(false);
            this.v_DanhSachCoSoBindingNavigator.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private QuanLyThiTracNghiem_1DataSet quanLyThiTracNghiem_1DataSet;
        private System.Windows.Forms.BindingSource v_DanhSachCoSoBindingSource;
        private QuanLyThiTracNghiem_1DataSetTableAdapters.V_DanhSachCoSoTableAdapter v_DanhSachCoSoTableAdapter;
        private QuanLyThiTracNghiem_1DataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator v_DanhSachCoSoBindingNavigator;
        private System.Windows.Forms.ToolStripButton bindingNavigatorAddNewItem;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorDeleteItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton v_DanhSachCoSoBindingNavigatorSaveItem;
        private System.Windows.Forms.ComboBox tENCSComboBox;
        private System.Windows.Forms.Button btnDangNhap;
        private System.Windows.Forms.TextBox txtPass;
        private System.Windows.Forms.TextBox txtLogin;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.RadioButton rdGiaoVien;
        private System.Windows.Forms.RadioButton rdSinhVien;
    }
}