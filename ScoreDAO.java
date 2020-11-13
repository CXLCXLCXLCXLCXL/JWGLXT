package com.qdu.dao;

import com.qdu.pojo.Score;
import com.qdu.pojo.ScoreId;
import java.util.List;

public interface ScoreDAO {
    //增
    void insert(Score score);
    //删
    void deleteById(ScoreId id);
    //改
    void update(Score score);
    //查
    Score getOneById(ScoreId  id);
    List getListById(String id,Boolean asc);
    public List getListByTeacherId(String id);
    public List getStudentListToAddScore(String id,String batch,String course) ;
    public List getScoreListToTeacher(String id,String batch,String course);
    public List getStudentListToExel(String id,String batch,String course);
    //查找所有
    List<Score> getAll();
    
    List<Score> getListByPageNumberAndSize(int pageNumber, int pageSize);
    
}
