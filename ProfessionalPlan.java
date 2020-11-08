package com.qdu.pojo;

public class ProfessionalPlan  implements java.io.Serializable {
     private Integer id;
     private String professional;
     private String course;
     private Integer year;
     private String term;

    public ProfessionalPlan() {
    }

    public ProfessionalPlan(Integer id, String professional, String course, Integer year, String term) {
        this.id = id;
        this.professional = professional;
        this.course = course;
        this.year = year;
        this.term = term;
    }

    public ProfessionalPlan(Integer id) {
        this.id = id;
    }
    
    public ProfessionalPlan(String professional, String course, Integer year, String term) {
       this.professional = professional;
       this.course = course;
       this.year = year;
       this.term = term;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getProfessional() {
        return this.professional;
    }
    
    public void setProfessional(String professional) {
        this.professional = professional;
    }
    public String getCourse() {
        return this.course;
    }
    
    public void setCourse(String course) {
        this.course = course;
    }
    public Integer getYear() {
        return this.year;
    }
    
    public void setYear(Integer year) {
        this.year = year;
    }
    public String getTerm() {
        return this.term;
    }
    
    public void setTerm(String term) {
        this.term = term;
    }

}


