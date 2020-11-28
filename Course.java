package com.qdu.pojo;
/**/
public class Course  implements java.io.Serializable {
     private String id;
     private String name;
     private String type;
     private String faculty;
     private Integer weight;
     private String remark;

    public Course() {
    }
     public Course(String id) {
        this.id = id;
    }
    public Course(String id, String name) {
        this.id = id;
        this.name = name;
    }
    public Course(String id, String name, String type, String faculty, Integer weight, String remark) {
       this.id = id;
       this.name = name;
       this.type = type;
       this.faculty = faculty;
       this.weight = weight;
       this.remark = remark;
    }
   
    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    public String getFaculty() {
        return this.faculty;
    }
    
    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }
    public Integer getWeight() {
        return this.weight;
    }
    
    public void setWeight(Integer weight) {
        this.weight = weight;
    }
    
    public String getRemark() {
        return this.remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
    }

}


