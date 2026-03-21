package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.Account;
import models.AccountWithRole;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author tan_b
 */
public class AccountDAO extends DBContext {

    PreparedStatement st; //cb cau lenh
    ResultSet rs;// hung kq tra ve

    public Account getAccount(String username, String password) {
        try {
            String sql = """
                        select * from Account
                        where username = ? and password = ?
                        """;
            st = connection.prepareStatement(sql);

            st.setString(1, username);
            st.setString(2, password);

            rs = st.executeQuery();

            if (rs.next()) {
                int accountId = rs.getInt("account_id");
                String user = rs.getString("username");
                String pass = rs.getString("password");
                int roleId = rs.getInt("role_id");

                Account acc = new Account(accountId, user, pass, roleId);

                return acc;
            }

        } catch (Exception e) {
            return null;
        }
        return null;
    }

    public List<Account> getAllAccounts() {
        List<Account> accs = new ArrayList<>();
        try {
            String sql = "select * from Account";
            st = connection.prepareStatement(sql);
            rs = st.executeQuery();

            while (rs.next()) {
                int accountId = rs.getInt("account_id");
                String user = rs.getString("username");
                String pass = rs.getString("password");
                int roleId = rs.getInt("role_id");

                Account acc = new Account(accountId, user, pass, roleId);
                accs.add(acc);
            }

        } catch (Exception e) {
            return null;
        }
        return accs;
    }

    public List<AccountWithRole> getAccountsWithRole() {
        //return accounts;
        List<AccountWithRole> accs = new ArrayList<AccountWithRole>();
        try {
            String sql = """
                         select a.username, a.password, r.role_name 
                         from Account a
                         	join Role r on a.role_id = r.role_id
                         """;
            st = connection.prepareStatement(sql);
            // truyen tham so cho cau lenh sql
            // o day k can truyen tham so vi cau lenh sql k co where

            rs = st.executeQuery(); // select
            while (rs.next()) {
                String user = rs.getString("username");
                String pass = rs.getString("password");
                String roleName = rs.getString("role_name");
                AccountWithRole acc = new AccountWithRole(user, pass, roleName);
                accs.add(acc);
            }
            return accs;
        } catch (Exception e) {
            return null;
        }
    }

    public void insertTeacherAccount(String username, String password, int teacherId) {
        String sql = """
                     INSERT INTO Account(username,password,role_id,teacher_id) 
                        VALUES (?,?,2,?)
                     """;

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setInt(3, teacherId);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void insertStudentAccount(String username, String password, int studentId) {
        String sql = """
                     INSERT INTO Account(username,password,role_id,student_id) 
                        VALUES (?,?,3,?)
                     """;

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setInt(3, studentId);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
