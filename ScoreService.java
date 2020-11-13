package com.qdu.service;

import com.qdu.dao.ScoreDAO;
import com.qdu.dao.impl.ScoreDAOImpl;
import com.qdu.pojo.Score;
import com.qdu.pojo.ScoreId;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ScoreService {
    @Resource
    private ScoreDAOImpl scoredao;
    
    @Transactional
    public Score getScoreById(ScoreId id) {
        return scoredao.getOneById(id);
    }
    
    @Transactional
    public List getListById(String id,Boolean asc) {
        return scoredao.getListById(id,asc);
    }
    
    @Transactional
    public List getScoreList() {
        return scoredao.getAll();
    }

    @Transactional(propagation = Propagation.REQUIRED,timeout = 10)
    public void addScore(Score score) {
         scoredao.insert(score);
    }
    
    @Transactional
    public void updateScore(Score score) {
        scoredao.update(score);
    }
    
    @Transactional
    public void deleteScore(ScoreId id) {
        scoredao.deleteById(id);
    }
    
    @Transactional
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return scoredao.getListByPageNumberAndSize(pageNumber, pageSize);
    }
    
    @Transactional
    public List getListByTeacherId(String id){
        return scoredao.getListByTeacherId(id);
    }
    
    @Transactional
    public List getStudentListToAddScore(String id,String batch,String course) {
        return scoredao.getStudentListToAddScore(id, batch, course);
    }    
    @Transactional
    public List getStudentListToExel(String id,String batch,String course) {
        return scoredao.getStudentListToExel(id, batch, course);
    }
}
