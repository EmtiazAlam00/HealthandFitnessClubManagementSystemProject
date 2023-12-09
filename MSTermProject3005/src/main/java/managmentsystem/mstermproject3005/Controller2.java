package managmentsystem.mstermproject3005;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.layout.AnchorPane;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.ResourceBundle;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;


public class Controller2 implements Initializable {
    @FXML
    private AnchorPane RegisterForView;

    @FXML
    private Button eventsButton;

    @FXML
    private AnchorPane eventsView;

    @FXML
    private Button groupClassButton;

    @FXML
    private AnchorPane groupClassesView;

    @FXML
    private Button logoutMember;

    @FXML
    private AnchorPane memberDashboardView;

    @FXML
    private AnchorPane members4tracks;

    @FXML
    private AnchorPane middleViewFrame;

    @FXML
    private AnchorPane reminderView;

    @FXML
    private AnchorPane workshopView;

    @FXML
    private Button worshopButton;

    @FXML
    private Button yourDashboardButton;

    @FXML
    private AnchorPane activitesView;

    @FXML
    private Button activitiesButton;

    @FXML
    private TextField adminEquipment_name;

    @FXML
    private Button billingsButton;

    @FXML
    private AnchorPane billingsMemberView;

    @FXML
    private Button classButton;

    @FXML
    private AnchorPane classesView;


    @FXML
    private Button equipmentsButton;

    @FXML
    private AnchorPane equipmentsView;

    @FXML
    private DatePicker lastMaint;

    @FXML
    private Button logoutStaff;

    @FXML
    private AnchorPane manageBookingsView;

    @FXML
    private Button manageButton;

    @FXML
    private DatePicker nextMaint;

    @FXML
    private Button sessionsButton;

    @FXML
    private AnchorPane trainsessionView;
    @FXML
    private Button logoutTrainer;

    @FXML
    private AnchorPane memProfileView;

    @FXML
    private Button notesButton;

    @FXML
    private AnchorPane notesView;

    @FXML
    private Button profileButton;

    @FXML
    private Button scheduleButton;

    @FXML
    private AnchorPane scheduleView;
    private Connection connect;
    private PreparedStatement prepare;
    private ResultSet result;
    private Statement statement;


    public void logoutMember() {
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Confirmation Message");
            alert.setHeaderText(null);
            alert.setContentText("Are you sure want to logout?");
            Optional<ButtonType> option = alert.showAndWait();
            if (option.get().equals(ButtonType.OK)) {
                Parent root = FXMLLoader.load(getClass().getResource("loginRegisterForm.fxml"));

                Stage stage = new Stage();
                Scene scene = new Scene(root);

                stage.initStyle(StageStyle.TRANSPARENT);

                stage.setScene(scene);
                stage.show();

                logoutMember.getScene().getWindow().hide();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void logoutStaff() {
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Confirmation Message");
            alert.setHeaderText(null);
            alert.setContentText("Are you sure want to logout?");
            Optional<ButtonType> option = alert.showAndWait();
            if (option.get().equals(ButtonType.OK)) {
                Parent root = FXMLLoader.load(getClass().getResource("loginRegisterForm.fxml"));

                Stage stage = new Stage();
                Scene scene = new Scene(root);

                stage.initStyle(StageStyle.TRANSPARENT);

                stage.setScene(scene);
                stage.show();

                logoutStaff.getScene().getWindow().hide();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void logoutTrainer() {
        try {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("Confirmation Message");
            alert.setHeaderText(null);
            alert.setContentText("Are you sure want to logout?");
            Optional<ButtonType> option = alert.showAndWait();
            if (option.get().equals(ButtonType.OK)) {
                Parent root = FXMLLoader.load(getClass().getResource("loginRegisterForm.fxml"));

                Stage stage = new Stage();
                Scene scene = new Scene(root);

                stage.initStyle(StageStyle.TRANSPARENT);

                stage.setScene(scene);
                stage.show();

                logoutTrainer.getScene().getWindow().hide();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void switchForm(ActionEvent event) {
        if (event.getSource() == yourDashboardButton) {
            members4tracks.setVisible(true);
            groupClassesView.setVisible(false);
            workshopView.setVisible(false);
            eventsView.setVisible(false);
        } else if (event.getSource() == groupClassButton) {
            members4tracks.setVisible(false);
            groupClassesView.setVisible(true);
            workshopView.setVisible(false);
            eventsView.setVisible(false);
        } else if (event.getSource() == worshopButton) {
            members4tracks.setVisible(false);
            groupClassesView.setVisible(false);
            workshopView.setVisible(true);
            eventsView.setVisible(false);
        } else if (event.getSource() == eventsButton) {
            members4tracks.setVisible(false);
            groupClassesView.setVisible(false);
            workshopView.setVisible(false);
            eventsView.setVisible(true);
        } else if (event.getSource() == classButton) {
            manageBookingsView.setVisible(false);
            billingsMemberView.setVisible(false);
            classesView.setVisible(true);
            trainsessionView.setVisible(false);
            activitesView.setVisible(false);
            equipmentsView.setVisible(false);
        } else if (event.getSource() == billingsButton) {
            manageBookingsView.setVisible(false);
            billingsMemberView.setVisible(true);
            classesView.setVisible(false);
            trainsessionView.setVisible(false);
            activitesView.setVisible(false);
            equipmentsView.setVisible(false);
        } else if (event.getSource() == sessionsButton) {
            manageBookingsView.setVisible(false);
            billingsMemberView.setVisible(false);
            classesView.setVisible(false);
            trainsessionView.setVisible(true);
            activitesView.setVisible(false);
            equipmentsView.setVisible(false);
        } else if (event.getSource() == activitiesButton) {
            manageBookingsView.setVisible(false);
            billingsMemberView.setVisible(false);
            classesView.setVisible(false);
            trainsessionView.setVisible(false);
            activitesView.setVisible(true);
            equipmentsView.setVisible(false);
        } else if (event.getSource() == manageButton) {
            manageBookingsView.setVisible(true);
            billingsMemberView.setVisible(false);
            classesView.setVisible(false);
            trainsessionView.setVisible(false);
            activitesView.setVisible(false);
            equipmentsView.setVisible(false);
        } else if (event.getSource() == equipmentsButton) {
            manageBookingsView.setVisible(false);
            billingsMemberView.setVisible(false);
            classesView.setVisible(false);
            trainsessionView.setVisible(false);
            activitesView.setVisible(false);
            equipmentsView.setVisible(true);
            membersGender();
            // equipmentShowData();
        } else if (event.getSource() == notesButton) {
            notesView.setVisible(true);
            scheduleView.setVisible(false);
            memProfileView.setVisible(false);
        } else if (event.getSource() == scheduleButton) {
            notesView.setVisible(false);
            scheduleView.setVisible(true);
            memProfileView.setVisible(false);
        } else if (event.getSource() == profileButton) {
            notesView.setVisible(false);
            scheduleView.setVisible(false);
            memProfileView.setVisible(true);

        }
    }


    @FXML
    private TableColumn<equipmentData, String> equipmentLast_admin;

    @FXML
    private TableColumn<equipmentData, String> equipmentName_admin;

    @FXML
    private TableColumn<equipmentData, String> equipmentNext_admin;

    @FXML
    private TableColumn<equipmentData, String> equipmentStatus_admin;

    @FXML
    private TableView<equipmentData> equipmentViewTable;

    @FXML
    public ComboBox<String> comboBox;
    public String status[] = { "Active", "Inactive" };

    public void membersGender() {
        if (comboBox != null) {
            List<String> genderList = new ArrayList<>();

            for (String data : status) {
                genderList.add(data);
            }
            ObservableList<String> listData = FXCollections.observableArrayList(genderList);
            comboBox.setItems(listData);
        } else {
            System.out.println("comboBox is null!");
        }
    }

      public ObservableList<equipmentData>equipmentDataList(){
        ObservableList<equipmentData> listData = FXCollections.observableArrayList();
        String sql = "SELECT * FROM newFitnessEquipment";
        connect = Database.connectDb();
         try{
             prepare = connect.prepareStatement(sql);
            result = prepare.executeQuery();

            equipmentData ed;
             while(result.next()){
                 ed = new equipmentData(result.getString("name"),
                 result.getString("status"), result.getDate("lastMaintenance"), result.getDate("nextMaintenance"));
                listData.add(ed);
            }
            }catch(Exception e) {e.printStackTrace();}
            return listData;
      }


     public ObservableList<equipmentData>equipmentListData;
     public void equipmentShowData(){
     equipmentListData = equipmentDataList();

     equipmentName_admin.setCellValueFactory(new PropertyValueFactory<>("name"));
     equipmentStatus_admin.setCellValueFactory(new
     PropertyValueFactory<>("status"));
     equipmentLast_admin.setCellValueFactory(new
     PropertyValueFactory<>("lastMaintenance"));
     equipmentNext_admin.setCellValueFactory(new
     PropertyValueFactory<>("nextMaintenance"));

     equipmentViewTable.setItems(equipmentListData);
     }

    public void addEquipment() {
        String sql = "INSERT INTO newFitnessEquipment (name, status, lastMaintenance, nextMaintenance) VALUES (?, ?, ?, ?)";
        connect = Database.connectDb();

        try {
            Alert alert;
            if (adminEquipment_name.getText().isEmpty()
                    || comboBox.getSelectionModel().getSelectedItem() == null
                    || lastMaint.getValue() == null
                    || nextMaint.getValue() == null) {
                emptyFields();
            } else {
                String checkName = "SELECT name FROM newFitnessEquipment WHERE name = '" + adminEquipment_name.getText() + "'";
                statement = connect.createStatement();
                result = statement.executeQuery(checkName);

                if (result.next()) {
                    alert = new Alert(Alert.AlertType.ERROR);
                    alert.setTitle("Error Message");
                    alert.setContentText("Equipment name: " + adminEquipment_name.getText() + " already taken!");
                    alert.showAndWait();
                } else {
                    prepare = connect.prepareStatement(sql);
                    prepare.setString(1, adminEquipment_name.getText());
                    prepare.setString(2, (String) comboBox.getSelectionModel().getSelectedItem());

                    // Convert LocalDate to java.sql.Date
                    java.sql.Date lastMaintenanceDate = java.sql.Date.valueOf(lastMaint.getValue());
                    java.sql.Date nextMaintenanceDate = java.sql.Date.valueOf(nextMaint.getValue());

                    prepare.setDate(3, lastMaintenanceDate);
                    prepare.setDate(4, nextMaintenanceDate);

                    prepare.executeUpdate();
                    alert = new Alert(Alert.AlertType.INFORMATION);
                    alert.setTitle("Information Message");
                    alert.setContentText("Successfully added!");
                    alert.showAndWait();

                    equipmentShowData();
                    equipmentClear();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void equipmentClear(){
      equipmentName_admin.setText("");
      comboBox.getSelectionModel().clearSelection();
      lastMaint.setValue(null);
      nextMaint.setValue(null);
      }
      public void equipmentSelect() {

      equipmentData ed = equipmentViewTable.getSelectionModel().getSelectedItem();
      int num = equipmentViewTable.getSelectionModel().getSelectedIndex();
       if ((num - 1) < -1) {
      return;
      }
      equipmentName_admin.setText(ed.getName());
      lastMaint.setValue(LocalDate.parse(String.valueOf(ed.getLastMaintenance())));
      nextMaint.setValue(LocalDate.parse(String.valueOf(ed.getNextMaintenance())));

      }

    public void emptyFields() {
        Alert alert = new Alert(Alert.AlertType.ERROR);
        alert.setTitle("Error Message");
        alert.setHeaderText(null);
        alert.setContentText("Please fill all blank fields");
    }

    public void close(){
        javafx.application.Platform.exit();
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        membersGender();
    }
}
