package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.UserDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.MD5;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;

public class LoginService {
    private UserDAO userDAO = new UserDAO();

    public User login(String username, String password) {

        if (username == null || password == null) return null;

        username = username.trim();
        password = password.trim();

        if (username.isEmpty() || password.isEmpty()) return null;
        String hashpsw = MD5.md5(password);
        return userDAO.login(username, hashpsw);

    }
}
