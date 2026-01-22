package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

import java.time.LocalDateTime;

public class ActivityLog {
    private LocalDateTime createdAt;
    private String username;
    private String action;
    private String detail;

    public ActivityLog() {
    }

    public ActivityLog(String username, String action, String detail) {
        this.createdAt = LocalDateTime.now();
        this.username = username;
        this.action = action;
        this.detail = detail;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
}
