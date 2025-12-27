package vn.edu.hcmuaf.fit.nhom15_ltweb.model;
import java.lang.reflect.Constructor;
import java.util.Date;
public class User {
    private int userID;            // ID (khóa chính)
    private String fullName;       // Tên đầy đủ của người dùng
    private String email;          // Email
    private String password;       // Mật khẩu
    private String role;           // Vai trò (admin, user)
    private Date createdAt;        // Ngày tạo tài khoản
    private Date updatedAt;        // Ngày cập nhật tài khoản
    private String passport;       // Số hộ chiếu (nếu có)
    private String phone;          // Số điện thoại
    private String address;        // Địa chỉ
    private Date birthDate;        // Ngày sinh
    private String gender;         // Giới tính

    public User(int userID, String fullName, String email, String password, String role, Date createdAt, Date updatedAt, String passport, String phone, String address, Date birthDate, String gender) {
        this.userID = userID;
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.role = role;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.passport = passport;
        this.phone = phone;
        this.address = address;
        this.birthDate = birthDate;
        this.gender = gender;
    }
public User(){

}
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }
}
