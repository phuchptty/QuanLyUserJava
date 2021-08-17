package mainProccess;

import models.User;
import services.UserService;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.util.ArrayList;

public class FeatureHandler extends Component {
    public void menuExitBtnHandler() {
        System.exit(0);
    }

    public DefaultTableModel allUserTable(JLabel userCountLabel) {
        DefaultTableModel model = new DefaultTableModel() {
            @Override
            public boolean isCellEditable(int row, int column) {
                return column == 4;
            }
        };

        model.addColumn("ID");
        model.addColumn("Tên Đầy Đủ");
        model.addColumn("Email");
        model.addColumn("Thời Gian Tạo");
        model.addColumn("Hành Động");

        ArrayList<User> users = new UserService().getAllUsers();

        for (User user : users) {
            model.insertRow(0, new Object[]{user.getId(), user.getFullName(), user.getEmail(), user.getCreatedAt(), "Xoá"});
        }

        userCountLabel.setText(String.format("Có Tất Cả: %d Thành Viên", users.size()));

        return model;
    }

    private void updateTable(JTable table, JLabel userCountLabel) {
        DefaultTableModel model = (DefaultTableModel) table.getModel();
        model.setRowCount(0);
        ArrayList<User> users = new UserService().getAllUsers();

        for (User user : users) {
            model.insertRow(0, new Object[]{user.getId(), user.getFullName(), user.getEmail(), user.getCreatedAt(), "Xoá"});
        }

        table.setModel(model);
        userCountLabel.setText(String.format("Có Tất Cả: %d Thành Viên", users.size()));
    }

    public void refreshUserTable(JTable table, JLabel userCountLabel) {
        this.updateTable(table, userCountLabel);
    }

    public void addUser(JTable table, JLabel userCountLabel, String fullName, String email) {
        User newUser = new User(fullName, email);

        boolean res = new UserService().createUser(newUser);

        if (res) {
            this.updateTable(table, userCountLabel);
            JOptionPane.showMessageDialog(this, "Thêm User Thành Công", "Thông Báo", JOptionPane.INFORMATION_MESSAGE);
            System.out.println("Insert OK");
        }
    }

    public void deleteUser(JTable table, JLabel userCountLabel, int id) {
        boolean res = new UserService().deleteUser(id);

        if (res) {
            this.updateTable(table, userCountLabel);
            JOptionPane.showMessageDialog(this, "Xoá User Thành Công", "Thông Báo", JOptionPane.INFORMATION_MESSAGE);
            System.out.println("Insert OK");
        } else {
            JOptionPane.showMessageDialog(this, "Xoá User Thất Bại", "Thông Báo", JOptionPane.ERROR_MESSAGE);
        }
    }
}
