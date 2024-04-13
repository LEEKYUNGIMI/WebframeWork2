package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.CreditDao;
import kr.ac.hansung.cse.model.Credit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CreditService {
    private CreditDao creditDao;

    @Autowired
    public CreditService(CreditDao creditDao){
        this.creditDao=creditDao;
    }

    public List<Credit> getCredit(){
        List<Credit> credits = creditDao.getCredit();
        int totalCredit = totalCredit(credits);
        for (Credit credit : credits) {
            credit.setTotalCredit(totalCredit);
        }
        return credits;
    }

    public int totalCredit(List<Credit> credits) {
        int totalCredit = 0;
        for (Credit credit : credits) {
            totalCredit += credit.getCredit();
        }
        return totalCredit;
    }

    public List<Credit> getAllCourse(int year, int semester){
        return creditDao.getAllCourse(year,semester);
    }
}
