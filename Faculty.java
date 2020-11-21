package com.qdu.pojo;
/**/
public class Faculty  implements java.io.Serializable {
     private String name;
     private String remark;

    public Faculty() {
    }
    public Faculty(String name) {
        this.name = name;
    }
    public Faculty(String name, String remark) {
       this.name = name;
       this.remark = remark;
    }
   
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getRemark() {
        return this.remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
    }

}


