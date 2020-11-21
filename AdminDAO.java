package com.qdu.dao;

import com.qdu.pojo.Administrator;
/**
  AdminDAO接口，  定义对Administrator表的操作。
 */

public interface AdminDAO {

    void update(Administrator admin);

    Administrator getOneById(String id);

}
