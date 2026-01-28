package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.DashboardDao;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.ActivityLog;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.DashboardSummary;

import java.util.List;

public class DashboardService {

    private DashboardDao dao = new DashboardDao();

    public DashboardSummary getSummary() {
        DashboardSummary s = new DashboardSummary();
        s.setTotalLocations(dao.countLocations());
        s.setTotalUsers(dao.countUsers());
        s.setBookingToday(dao.countBookingToday());
        s.setRevenueMonth(dao.revenueThisMonth());
        return s;
    }

//    public List<ActivityLog> getRecentActivities() {
//        return dao.recentActivities();
//    }
}

