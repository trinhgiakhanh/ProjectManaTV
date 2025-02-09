﻿using Bunifu.UI.WinForms;
using Bunifu.UI.WinForms.BunifuButton;
using project_ManaTV.HelpMethod;
using project_ManaTV.Presenters.Staff;
using project_ManaTV.Repository;
using project_ManaTV.Views.Components;
using project_ManaTV.Views.FuncFrm.ShiftWork;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Utilities.BunifuDataGridView.Transitions;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Window;

namespace project_ManaTV.Views.FuncFrm.StaffManagement
{
    public partial class StaffView : Form, IStaffView
    {

        //----------------------------------------------------------------------------
        //Các attribute

        public Form FRM_LAYOUT { get; set; }//thêm FRM_Layout
        public Size gridView { get => gridViewStaff.Size; set => gridViewStaff.Size = value; }
        private int CurrentPage = 1;
        private int PageSize = 10;
        private int TotalPage;
        private int TotalRows;
        private List<int> listInt = new List<int>();
        public int currentPage {
            get { return CurrentPage; } 
            set { CurrentPage = value; } 
        }
        public int pageSize {
            get { return PageSize; }
            set { PageSize = value; }
        }

        public int totalPages {
            get { return TotalPage; }
            set { TotalPage = value; }
        }
        public int totalRows
        {
            get { return TotalRows; }
            set { TotalRows = value; }
        }

        public StaffView()
        {
            InitializeComponent();
            //Setup header color
            Color alterHeaderColor = Color.FromArgb(40, 96, 144);
            gridViewStaff.ColumnHeadersDefaultCellStyle.BackColor = alterHeaderColor;
            gridViewStaff.ColumnHeadersDefaultCellStyle.ForeColor = Color.WhiteSmoke;
            gridViewStaff.ColumnHeadersDefaultCellStyle.SelectionBackColor = alterHeaderColor;
            gridViewStaff.ColumnHeadersDefaultCellStyle.SelectionForeColor = Color.WhiteSmoke;
            //Setup Row Color
            Color alterRowColor = Color.FromArgb(224, 224, 224);
            gridViewStaff.AlternatingRowsDefaultCellStyle.BackColor = alterRowColor;
            gridViewStaff.AlternatingRowsDefaultCellStyle.ForeColor = Color.Empty;
            gridViewStaff.AlternatingRowsDefaultCellStyle.SelectionBackColor = alterRowColor;
            gridViewStaff.AlternatingRowsDefaultCellStyle.SelectionForeColor= Color.Empty;
            //Setup Cell Color
            Color alterFontColor = Color.FromArgb(64, 64, 64);
            gridViewStaff.DefaultCellStyle.BackColor = Color.WhiteSmoke;
            gridViewStaff.DefaultCellStyle.ForeColor = alterFontColor;
            gridViewStaff.DefaultCellStyle.SelectionBackColor = Color.WhiteSmoke;
            gridViewStaff.DefaultCellStyle.SelectionForeColor = alterHeaderColor;
            AssociateAndRaiseViewEvents();
        }
        public string valueSearch
        {
            get { return txtSearch.Text.Trim(); }
            set { txtSearch.Text = value; }
        }

        List<int> IStaffView.list {
             get  { return listInt; }
            set { listInt = value; }
        }


        private void AssociateAndRaiseViewEvents()
        {
            
            //Sự kiện tìm kiếm
            try
            {
                btnSrc.Click += delegate { SearchData?.Invoke(this, EventArgs.Empty); };
                txtSearch.KeyUp += (s, e) =>
                {
                    //MessageBox.Show(txtSearch.Text); // Giá trị của txtSearch.Text đã được cập nhật ở đây.
                    SearchData?.Invoke(this, EventArgs.Empty);
                };
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            //Sự kiện thay đổi dữ liệu trong datagridview
            gridViewStaff.CellContentClick += (s, e) =>
            {
                int actions = e.ColumnIndex;
                if (actions >= 8)
                {
                    
                    int x = int.Parse(gridViewStaff.Rows[e.RowIndex].Cells[0].Value.ToString());
                    //MessageBox.Show(actions + "");
                    StaffRepository m_Staff = new StaffRepository();
                    if (actions == 8)
                    {
                        if (InitClasses.UpdateStaff == null || InitClasses.UpdateStaff.IsDisposed)
                        {
                            InitClasses.UpdateStaff = new AboutStaff(x, "Update");
                        }
                        AboutStaffPresenter UpdatePresenter = new AboutStaffPresenter(m_Staff, InitClasses.UpdateStaff);
                        InitClasses.UpdateStaff.Show();
                    }
                    else if (actions == 9)
                    {                       
                        if (InitClasses.DetailStaff == null || InitClasses.DetailStaff.IsDisposed)
                        {
                            InitClasses.DetailStaff = new AboutStaff(x, "Detail");
                        }
                        AboutStaffPresenter DetailStaffPresenter = new AboutStaffPresenter(m_Staff, InitClasses.DetailStaff);
                        InitClasses.DetailStaff.Show();
                    }
                    else if (actions == 10)
                    {
                        if (InitClasses.DeleteStaff == null || InitClasses.DeleteStaff.IsDisposed)
                        {
                            InitClasses.DeleteStaff = new AboutStaff(x, "Delete");
                        }
                        AboutStaffPresenter DeleteStaffPresenter = new AboutStaffPresenter(m_Staff, InitClasses.DeleteStaff);
                        InitClasses.DeleteStaff.Show();
                    }else if(actions == 12)
                    {
                        listInt.Add(x);
                    }
                    else if (actions == 11)
                    {
                        Schedule schedule = new Schedule(x);
                        schedule.Show();
                    }
                }
                
            };

            //Sự kiện đổi trang dữ liệu
            
            btnPrev.Enabled = false;
            CheckEnable();

            
            btnPrev.Click += (s, e) =>
            {
                btnNext.Enabled = true;
                if (CurrentPage > 2 )
                {
                    CurrentPage--;
                    btnPrev.Enabled = true;
                }
                else
                {
                    CurrentPage--;
                    btnPrev.Enabled = false;
                }
                PageChanged?.Invoke( this, EventArgs.Empty );
              
            };

            btnNext.Click += (s, e) =>
            {
                btnPrev.Enabled = true;
                if (CurrentPage < TotalPage -1 )
                {
                    btnNext.Enabled = true;
                    CurrentPage += 1;
                }
                else
                {
                    CurrentPage++;
                    btnNext.Enabled = false;
                }
                PageChanged?.Invoke(this, EventArgs.Empty);
            };

            btnFirst.Click += (s, e) =>
            {
                CurrentPage = int.Parse(btnFirst.Text);
                PageChanged?.Invoke(this, EventArgs.Empty);
            };

            btnSecond.Click += (s, e) =>
            {
                CurrentPage = int.Parse(btnSecond.Text);
                PageChanged?.Invoke(this, EventArgs.Empty);              
            };
            btnThird.Click += (s, e) =>
            {
                CurrentPage = int.Parse(btnThird.Text);
                PageChanged?.Invoke(this, EventArgs.Empty);
            };
            btnFourth.Click += (s, e) =>
            {
                CurrentPage = int.Parse(btnFourth.Text);
                PageChanged?.Invoke(this, EventArgs.Empty);
            };

            btnFive.Click += (s, e) =>
            {
                CurrentPage = int.Parse(btnFive.Text);
                PageChanged?.Invoke(this, EventArgs.Empty);
            };

            //Su kien thay doi dong
            ddRows.SelectedIndexChanged += (s, e) =>
            {
                PageSize = int.Parse(ddRows.SelectedItem.ToString()); 
                CountPageChanged?.Invoke(this, EventArgs.Empty);
            };

            BtnDel.Click += (s, e) => {
                
                ConfirmModal confirm = new ConfirmModal("delete");
                confirm.Show();
                confirm.ConfirmClick += (sv, ev) =>
                {
                    DeleteStaff?.Invoke(this, EventArgs.Empty);
                };

            };

        }


        public event EventHandler SearchData;
        public event EventHandler CountPageChanged;
        public event EventHandler GetNumberOfStaff;
        public event EventHandler PageChanged;
        public event EventHandler DeleteStaff;

        public void HandlePagination()
        {
            //MessageBox.Show(TotalPage + " "+ CurrentPage);
            btnSecond.Visible = true;
            btnThird.Visible = true;
            btnFourth.Visible = true;
            btnFive.Visible = true;
            if (TotalPage <= 1)
            {
                btnSecond.Visible = false;
                btnThird.Visible = false;
                btnFourth.Visible = false;
                btnFive.Visible = false;
            }
            else if (TotalPage == 2)
            {
                btnThird.Visible = false;
                btnFourth.Visible = false;
                btnFive.Visible = false;
            }
            else if (TotalPage == 3)
            {
                btnFourth.Visible = false;
                btnFive.Visible = false;
            }
            else if (TotalPage == 4)
            {
                btnFive.Visible = false;
            }

            //Chuyển số nếu trang quá trang
            ChangePage();
            
        }
        private void ChangePage()
        {
            int first = int.Parse(btnFirst.Text);
            int second = int.Parse(btnSecond.Text);
            int third = int.Parse (btnThird.Text);
            int fourth = int.Parse(btnFourth.Text);
            int fiveth = int.Parse(btnFive.Text);
            if (TotalPage > 5)
            {
                if(TotalPage - 1 >= fiveth)
                {
                    if(currentPage == fourth || currentPage == fiveth)
                    {
                        btnFirst.Text = (first + 1).ToString();
                        btnSecond.Text = (second + 1).ToString();
                        btnThird.Text = (third + 1).ToString();
                        btnFourth.Text = (fourth + 1).ToString();
                        btnFive.Text = (fiveth + 1).ToString();
                    }
                }
                else if(TotalPage - 2 >= fiveth)
                {
                    if (currentPage == fiveth)
                    {
                        btnFirst.Text = (first + 2).ToString();
                        btnSecond.Text = (second + 2).ToString();
                        btnThird.Text = (third + 2).ToString();
                        btnFourth.Text = (fourth + 2).ToString();
                        btnFive.Text = (fiveth + 2).ToString();
                    }
                }else if(first - 1 > 0)
                {
                    if(currentPage == second || currentPage == first)
                    {
                        btnFirst.Text = (first - 1).ToString();
                        btnSecond.Text = (second - 1).ToString();
                        btnThird.Text = (third - 1).ToString();
                        btnFourth.Text = (fourth - 1).ToString();
                        btnFive.Text = (fiveth - 1).ToString();
                    }
                }else if(first - 2 > 0)
                {
                    btnFirst.Text = (first - 2).ToString();
                    btnSecond.Text = (second - 2).ToString();
                    btnThird.Text = (third - 2).ToString();
                    btnFourth.Text = (fourth - 2).ToString();
                    btnFive.Text = (fiveth - 2).ToString();
                }
           

            }
            //MessageBox.Show(currentPage.ToString());
        }
        public void displayStaff(List<Dictionary<string, object>> staffList)
        {
            //Ở đây rows 1 trang là 10;
            HandleGridView.SetMiddleCenter(7, gridViewStaff);

            Image imagePen = HandleImage.ZoomOutImage(HandleImage.filePath("assets/icons", "edit.png"));
            Image imageEye = HandleImage.ZoomOutImage(HandleImage.filePath("assets/icons", "details.png"));
            Image imageBin = HandleImage.ZoomOutImage(HandleImage.filePath("assets/icons", "delete.png"));
            Image imageSchedule = HandleImage.ZoomOutImage(HandleImage.filePath("assets/icons", "Schedule.png"));


            foreach (var item in staffList)
            {
                
                Image imageGen = ((bool)item["staff_gender"] == true)?
                    HandleImage.ZoomOutImage(HandleImage.filePath("Others", "male.png")):
                    HandleImage.ZoomOutImage(HandleImage.filePath("Others","female.png"));
                

                gridViewStaff.Rows.Add(
                    new object[]
                    {
                        
                        item["staff_id"].ToString(),
                        item["staff_name"].ToString(),
                        imageGen,
                        item["staff_phoneNumber"].ToString(),
                        item["staff_dob"].ToString(),
                        item["staff_address"].ToString(),
                        item["staff_email"].ToString(),
                        item["work_name"].ToString(),
                        imagePen,imageEye,imageBin,imageSchedule,
                    }
                    );
            }

        }

        private void StaffView_Load(object sender, EventArgs e)
        {
            GetNumberOfStaff?.Invoke(this, EventArgs.Empty);         
        }
        public void ClearGridView()
        {
            gridViewStaff.Rows.Clear();
        }

        public void ChangeLabelOfShowing(string label)
        {
            lbShowing.Text = label;
        }

        public void GetCountOfStaff(Dictionary<string, object> numberStaff)
        {
            ddRows.Text = "10";
            TotalRows = (int)numberStaff["number"];
            TotalPage = (int)Math.Ceiling((double)((int)numberStaff["number"]) / PageSize);
        }
        public void isClicked(string search)
        {
            foreach (Control control in pagination.Controls)
            {
                if (control is BunifuButton button)
                {
                    if (button.Text != search)
                    {
                        button.IdleFillColor = Color.Transparent;
                    }
                    else
                    {
                        button.IdleFillColor = Color.FromArgb(105, 181, 255);
                    }

                }
            }

        }
        public void CheckEnable()
        {
            if (CurrentPage < TotalPage)
            {
                btnNext.Enabled = true;
            }
            else
            {
                btnNext.Enabled = false;
            }if(CurrentPage > 1)
            {
                btnPrev.Enabled = true;
            }
            else
            {
                btnPrev.Enabled = false;
            }
        }

        public void ShowMessageOfDel(string message, BunifuSnackbar.MessageTypes messageTypes)
        {
            bunifuSnackbar1.Show(this, message,
                messageTypes,
                1000,
                "",
                BunifuSnackbar.Positions.TopRight);
        }
    }
}
