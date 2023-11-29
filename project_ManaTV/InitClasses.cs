﻿
using project_ManaTV.Views.FuncFrm.Bill;
using project_ManaTV.Views.FuncFrm.StaffManagement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project_ManaTV
{
    static internal class InitClasses
    {
        //Khoi tao form chinh
        public static Frm_Layout layout = new Frm_Layout();

        //Khoi tao form hien thi nhan vien
        public static StaffView staffView = new StaffView();

        //Khoi tao form them nhan vien
        public static AboutStaff AddNewStaff,UpdateStaff,DeleteStaff,DetailStaff;

        public static BillOverall bO;

    }
}
