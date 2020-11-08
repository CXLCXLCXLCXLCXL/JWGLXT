package com.qdu.pojo;

public class Professional  implements java.io.Serializable {
     private String name;
     private String faculty;
     private String remark;

    public Professional() {
    }
    public Professional(String name) {
        this.name = name;
    }
    public Professional(String name, String faculty, String remark) {
       this.name = name;
       this.faculty = faculty;
       this.remark = remark;
    }
   
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getFaculty() {
        return this.faculty;
    }
    
    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }
    public String getRemark() {
        return this.remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
    }

}


