package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.model.Credit;
import kr.ac.hansung.cse.service.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class RegistrationController {

    private RegistrationService registrationService;

    @Autowired
    public RegistrationController(RegistrationService registrationService){

       this.registrationService=registrationService;
    }

    @GetMapping("/registration")
    public String createRegistraion(Model model) {
        model.addAttribute("credit", new Credit());
        return "registration";
    }

    @PostMapping("/registration")
    public String processRegistration(@ModelAttribute("credit") @Valid Credit credit, BindingResult result) {
        if (result.hasErrors()) {
            // 폼 데이터 유효성 검사 실패 시 처리
            System.out.println("== Form data does not validate ==");

            List<ObjectError> errors = result.getAllErrors();
            for (ObjectError error : errors) {
                System.out.println(error.getDefaultMessage());
            }

            // 유효성 검사 실패 시 등록 페이지 다시 표시
            return "registration";
        }

        // 폼 데이터가 유효한 경우 등록 서비스 호출하여 저장
        registrationService.saveCourse(credit);
        return "registration_success"; // 성공 페이지로 이동
    }

    @GetMapping("/showRegistration")
    public String showRegistraion(Model model) {
        List<Credit> courses = registrationService.getAllCourse(2024, 2);
        model.addAttribute("courses", courses);
        return "showRegistration";
    }

}
