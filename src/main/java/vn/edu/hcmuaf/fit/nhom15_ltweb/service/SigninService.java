package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.UserDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.MD5;

public class SigninService {
    private UserDAO userDAO = new UserDAO();

    public String register(String fullname, String username, String password, String confirmPassword) {
        if (fullname == null || username == null || password == null || confirmPassword == null ||
                fullname.isEmpty() || username.isEmpty() || password.isEmpty() || confirmPassword.isEmpty())
            return "EMPTY";

        if (!password.equalsIgnoreCase(confirmPassword)) return "PASSWORD";

        if (userDAO.existsByEmail(username)) return "EMAIL";

        if (userDAO.checkPassword(password)) return "WEAK_PASSWORD";

        String passwordMD5 = MD5.md5(password);

        boolean success = userDAO.insertUser(fullname, username, passwordMD5);
        if (success) return "SUCCESS";
        else return "FAILURE";
    }

}
