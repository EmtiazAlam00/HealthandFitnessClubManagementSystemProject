module managmentsystem.mstermproject3005 {
    requires javafx.controls;
    requires javafx.fxml;

    requires com.dlsc.formsfx;
    requires java.sql;

    opens managmentsystem.mstermproject3005 to javafx.fxml;
    exports managmentsystem.mstermproject3005;
}