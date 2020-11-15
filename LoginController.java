package com.qdu.controller;

import com.qdu.pojo.Administrator;
import com.qdu.pojo.Student;
import com.qdu.pojo.Teacher;
import com.qdu.service.AdminService;
import com.qdu.service.StudentService;
import com.qdu.service.TeacherService;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private AdminService adminService;
    
    @RequestMapping("/exit")
    public void loginout(HttpServletRequest request,HttpServletResponse response) throws IOException{ 
        request.getSession().invalidate(); 
	response.sendRedirect(request.getContextPath());
    }
    @RequestMapping("/Login.do")
    public String login(String id,String password,String role,Model model,HttpServletRequest request){
        if ("admin".equals(role)) {
             Administrator administrator=adminService.validateLogin(id,password);
            if(administrator!=null) {
                model.addAttribute("admin", administrator);
                return "manager/mindex";
            }
            else      
                return "fail";
        } else if ("teacher".equals(role)) {
            Teacher teacher=teacherService.validateLogin(id,password);
            if(teacher!=null) {
                HttpSession session =request.getSession();
                session.setAttribute("teacher",teacher);
                model.addAttribute("teacher",teacher);
                return "teacher/mindex";
            }
            else     
                return "fail";
        } else if ("student".equals(role)) {
            Student student=studentService.validateLogin(id,password);
            if(student!=null) {
                HttpSession session =request.getSession();
                session.setAttribute("student",student);
                model.addAttribute("student", student);
                return "student/mindex";
            }
            else     
                return "fail";
        } else {
            return "fail";
        }
    }
    
}
