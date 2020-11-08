package com.qdu.pojo;

public class Batch  implements java.io.Serializable {
     private String name;
     private Integer studentCount;
     private String professional;

    public Batch() {
    }
    public Batch(String name) {
        this.name = name;
    }
    public Batch(String name, Integer studentCount, String professional) {
       this.name = name;
       this.studentCount = studentCount;
       this.professional = professional;
    }
   
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Integer getStudentCount() {
        return this.studentCount;
    }
    
    public void setStudentCount(Integer studentCount) {
        this.studentCount = studentCount;
    }
    public String getProfessional() {
        return this.professional;
    }
    
    public void setProfessional(String professional) {
        this.professional = professional;
    }

}


