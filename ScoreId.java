package com.qdu.pojo;

public class ScoreId  implements java.io.Serializable {

     private String stuid;
     private String course;

    public ScoreId() {
    }

    public ScoreId(String stuid, String course) {
       this.stuid = stuid;
       this.course = course;
    }
   
    public String getStuid() {
        return this.stuid;
    }
    
    public void setStuid(String stuid) {
        this.stuid = stuid;
    }
    public String getCourse() {
        return this.course;
    }
    
    public void setCourse(String course) {
        this.course = course;
    }
//
//
//   public boolean equals(Object other) {
//         if ( (this == other ) ) return true;
//		 if ( (other == null ) ) return false;
//		 if ( !(other instanceof ScoreId) ) return false;
//		 ScoreId castOther = ( ScoreId ) other; 
//         
//		 return ( (this.getStuid()==castOther.getStuid()) || ( this.getStuid()!=null && castOther.getStuid()!=null && this.getStuid().equals(castOther.getStuid()) ) )
// && ( (this.getCourse()==castOther.getCourse()) || ( this.getCourse()!=null && castOther.getCourse()!=null && this.getCourse().equals(castOther.getCourse()) ) );
//   }
//   
//   public int hashCode() {
//         int result = 17;
//         
//         result = 37 * result + ( getStuid() == null ? 0 : this.getStuid().hashCode() );
//         result = 37 * result + ( getCourse() == null ? 0 : this.getCourse().hashCode() );
//         return result;
//   }   


}


