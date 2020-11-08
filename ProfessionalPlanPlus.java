package com.qdu.pojo;

public class ProfessionalPlanPlus  implements java.io.Serializable {
     private String course;
     private String type;
     private Integer weight;
     private Integer year;
     private String term;

    public ProfessionalPlanPlus(String course, String type, Integer weight, Integer year, String term) {
        this.course = course;
        this.type = type;
        this.weight = weight;
        this.year = year;
        this.term = term;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }
     
}


