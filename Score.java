package com.qdu.pojo;

public class Score  implements java.io.Serializable {

     private ScoreId id;
     private Integer score;
     private String pass;

    public Score() {
    }

	
    public Score(ScoreId id) {
        this.id = id;
    }
    public Score(ScoreId id, Integer score, String pass) {
       this.id = id;
       this.score = score;
       this.pass = pass;
    }
    public Score(String stuid,String course,Integer score, String pass) {
       this.id = new ScoreId(stuid, course);
       this.score = score;
       this.pass = pass;
    }
    public ScoreId getId() {
        return this.id;
    }
    
    public void setId(ScoreId id) {
        this.id = id;
    }
    public Integer getScore() {
        return this.score;
    }
    
    public void setScore(Integer score) {
        this.score = score;
    }
    public String getPass() {
        return this.pass;
    }
    
    public void setPass(String pass) {
        this.pass = pass;
    }

}


