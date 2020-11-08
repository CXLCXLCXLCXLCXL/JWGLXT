/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.pojo;

/**
 *
 * @author master
 */
public class PartScore implements java.io.Serializable{
         private String stuid;
     private String course;
     private Integer score;
     private String pass;

    public PartScore() {
    }

    public PartScore(String stuid, String course, Integer score, String pass) {
        this.stuid = stuid;
        this.course = course;
        this.score = score;
        this.pass = pass;
    }

    public String getStuid() {
        return stuid;
    }

    public void setStuid(String stuid) {
        this.stuid = stuid;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
     
     
}
