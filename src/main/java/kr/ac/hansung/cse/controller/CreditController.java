package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.model.Credit;
import kr.ac.hansung.cse.service.CreditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class CreditController {

    private CreditService creditService;

    @Autowired
    public CreditController(CreditService creditService){
        this.creditService=creditService;
    }

    @GetMapping("/credit")
    public String showCredit(Model model) {
        List<Credit> credits = creditService.getCredit();
        int totalCredit = creditService.totalCredit(credits);
        //System.out.println("Received credits: " + credits);
        model.addAttribute("credits",credits);
        model.addAttribute("totalCredit",totalCredit);
        return "credit";
    }

    @GetMapping("/credit/details/{year}/{semester}")
    public String showCreditDetails(@PathVariable int year ,
                                    @PathVariable int semester ,
                                    Model model){
        List<Credit> credits = creditService.getAllCourse(year,semester);
        System.out.println("상세보기 Received credits: " + credits);
        model.addAttribute("courses",credits);
        return "credit_details";
    }
}
