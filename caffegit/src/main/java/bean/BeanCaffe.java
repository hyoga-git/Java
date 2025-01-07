package bean;
import java.io.Serializable;

public class BeanCaffe implements Serializable {
    private String day;
    private String name;
    
    public void setDay(String day) {
        this.day = day;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    

    public String getDay() {
        return day;
    }
    
    public String getName() {
        return name;
    }
    
}
