package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.CreditDao;
import kr.ac.hansung.cse.model.Credit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegistrationService {

    private CreditDao creditDao;

    @Autowired
    public RegistrationService(CreditDao creditDao) {
        this.creditDao = creditDao;
    }

    public void saveCourse(Credit credit) {
        creditDao.saveCourse(credit);
    }

    public List<Credit> getAllCourse(int year, int semester){
        return creditDao.getAllCourse(year,semester);
    }
}
