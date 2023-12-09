package managmentsystem.mstermproject3005;

import java.sql.Date;

public class equipmentData {

    private String name;
    private String status;
    private Date lastMaintenance;
    private Date nextMaintenance;

    public equipmentData(String name, String status, Date lastMaintenance, Date nextMaintenance){
        this.name = name;
        this.status = status;
        this.lastMaintenance = lastMaintenance;
        this.nextMaintenance = nextMaintenance;
    }
    public String getName(){
        return name;
    }
    public String getStatus(){
        return status;
    }
    public Date getLastMaintenance(){
        return lastMaintenance;
    }
    public Date getNextMaintenance(){
        return nextMaintenance;
    }
}