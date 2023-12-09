package managmentsystem.mstermproject3005;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ResourceBundle;


public class Controller implements Initializable{
    @FXML
    private AnchorPane loginSection;

    @FXML
    private AnchorPane login_registerPage;

    @FXML
    private Button memberLoginButton;

    @FXML
    private TextField member_username;
    @FXML
    private TextField register_username;

    @FXML
    private TextField member_password;

    @FXML
    private Button registerButton;

    @FXML
    private AnchorPane registerSection;

    @FXML
    private TextField register_email;

    @FXML
    private TextField register_fullname;

    @FXML
    private TextField register_height;

    @FXML
    private TextField register_password;

    @FXML
    private Button staffButton;

    @FXML
    private AnchorPane staffLoginPage;

    @FXML
    private TextField staffUsername;

    @FXML
    private TextField staffPassword;

    @FXML
    private Button trainerBackButton;

    @FXML
    private Button trainerButton;

    @FXML
    private AnchorPane trainerLoginPage;

    @FXML
    private TextField trainerUsername;

    @FXML
    private TextField trainerPassword;

    @FXML
    private Button trainerSignin;

    private Connection connect;
    private PreparedStatement prepare;
    private ResultSet result;

    public void loginMember() {
        String sql = "SELECT * FROM members WHERE username = ? and password = ?";

        connect = Database.connectDb();

        try {
            prepare = connect.prepareStatement(sql);
            prepare.setString(1, member_username.getText());
            prepare.setString(2, member_password.getText());
            result = prepare.executeQuery();
            Alert alert;

            if (member_username.getText().isEmpty() || member_password.getText().isEmpty()) {
                alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Error Message");
                alert.setHeaderText(null);
                alert.setContentText("Please fill all blank fields");
                alert.showAndWait();
            } else {
                if (result.next()) {
                    alert = new Alert(Alert.AlertType.CONFIRMATION);
                    alert.setTitle("Information Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Successfully login");
                    alert.showAndWait();

                    Parent root = FXMLLoader.load(getClass().getResource("memberDashboard.fxml"));
                    Stage stage = new Stage();
                    Scene scene = new Scene(root);

                    stage.setScene(scene);
                    stage.show();

                } else {
                    alert = new Alert(Alert.AlertType.ERROR);
                    alert.setTitle("Error Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Wrong name or password");
                    alert.showAndWait();
                }
            }

        } catch (Exception e) {
            e.printStackTrace();

        }

    }
    public void registerMember() {
        String sql = "INSERT INTO members (full_name, email, height, username, password) VALUES(?,?,?,?,?)";
        connect = Database.connectDb();
        try {
            Alert alert;
            if (register_fullname.getText().isEmpty() || register_height.getText().isEmpty()
                    || register_email.getText().isEmpty() || register_password.getText().isEmpty() || register_username.getText().isEmpty()) {
                alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Error Message");
                alert.setContentText("Please fill all blank fields");
                alert.showAndWait();
            } else {
                if (register_password.getText().length() < 5) {
                    alert = new Alert(Alert.AlertType.ERROR);
                    alert.setTitle("Error Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Password too short");
                    alert.showAndWait();
                } else {
                    prepare = connect.prepareStatement(sql);
                    prepare.setString(1, register_fullname.getText());
                    prepare.setString(2, register_email.getText());
                    prepare.setString(3, register_height.getText());
                    prepare.setString(4, register_username.getText());
                    prepare.setString(5, register_password.getText());
                    alert = new Alert(Alert.AlertType.INFORMATION);
                    alert.setTitle("Information Message");
                    alert.setHeaderText(null);
                    alert.setContentText("New Member created, you may now login.");
                    alert.showAndWait();

                    prepare.executeUpdate();
                    register_fullname.setText("");
                    register_username.setText("");
                    register_height.setText("");
                    register_email.setText("");
                    register_password.setText("");

                }
            }
            prepare = connect.prepareStatement(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void loginTrainer() {
        String sql = "SELECT * FROM trainers WHERE username = ? and password = ?";

        connect = Database.connectDb();

        try {
            prepare = connect.prepareStatement(sql);
            prepare.setString(1, trainerUsername.getText());
            prepare.setString(2, trainerPassword.getText());
            result = prepare.executeQuery();
            Alert alert;

            if (trainerUsername.getText().isEmpty() || trainerPassword.getText().isEmpty()) {
                alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Error Message");
                alert.setHeaderText(null);
                alert.setContentText("Please fill all blank fields");
                alert.showAndWait();
            } else {
                if (result.next()) {
                    alert = new Alert(Alert.AlertType.INFORMATION);
                    alert.setTitle("Information Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Successfully login");
                    alert.showAndWait();

                    Parent root = FXMLLoader.load(getClass().getResource("trainerDashboard.fxml"));
                    Stage stage = new Stage();
                    Scene scene = new Scene(root);

                    stage.setScene(scene);
                    stage.show();

                } else {
                    alert = new Alert(Alert.AlertType.ERROR);
                    alert.setTitle("Error Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Wrong password or username login");
                    alert.showAndWait();
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            ;
        }

    }

    public void loginStaff() {
        String sql = "SELECT * FROM administrator WHERE username = ? and password = ?";

        connect = Database.connectDb();

        try {
            prepare = connect.prepareStatement(sql);
            prepare.setString(1, staffUsername.getText());
            prepare.setString(2, staffPassword.getText());
            result = prepare.executeQuery();
            Alert alert;

            if (staffUsername.getText().isEmpty() || staffPassword.getText().isEmpty()) {
                alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("Error Message");
                alert.setHeaderText(null);
                alert.setContentText("Please fill all blank fields");
                alert.showAndWait();
            } else {
                if (result.next()) {
                    alert = new Alert(Alert.AlertType.INFORMATION);
                    alert.setTitle("Information Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Successfully login");
                    alert.showAndWait();

                    Parent root = FXMLLoader.load(getClass().getResource("staffDashboard.fxml"));
                    Stage stage = new Stage();
                    Scene scene = new Scene(root);

                    stage.setScene(scene);
                    stage.show();

                } else {
                    alert = new Alert(Alert.AlertType.ERROR);
                    alert.setTitle("Eroro Message");
                    alert.setHeaderText(null);
                    alert.setContentText("Wrong password or username login");
                    alert.showAndWait();
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            ;
        }

    }

    public void switchToTrainerPage(ActionEvent event) {
        if (event.getSource() == trainerButton) {
            trainerLoginPage.setVisible(true);
            login_registerPage.setVisible(false);
            staffLoginPage.setVisible(false);
        } else if (event.getSource() == staffButton) {
            trainerLoginPage.setVisible(false);
            login_registerPage.setVisible(false);
            staffLoginPage.setVisible(true);
        }
    }
    private Stage stage;
    private Scene scene;
    private Parent root;
    public void backButton(ActionEvent event) throws IOException {
        Parent root = FXMLLoader.load(getClass().getResource("loginRegisterForm.fxml"));
        stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }
    public void close() {
        javafx.application.Platform.exit();
    }
    @Override
    public void initialize(URL url, ResourceBundle rb){
        //TODO

    }

}