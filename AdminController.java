package com.qdu.controller;

import com.qdu.pojo.Batch;
import com.qdu.pojo.Course;
import com.qdu.pojo.CoursePlan;
import com.qdu.pojo.Faculty;
import com.qdu.pojo.Professional;
import com.qdu.pojo.ProfessionalPlan;
import com.qdu.pojo.Score;
import com.qdu.pojo.ScoreId;
import com.qdu.pojo.Student;
import com.qdu.pojo.Teacher;
import com.qdu.service.BatchService;
import com.qdu.service.StudentService;
import com.qdu.service.CourseService;
import com.qdu.service.FacultyService;
import com.qdu.service.ProfessionalPlanService;
import com.qdu.service.ProfessionalService;
import com.qdu.service.ScoreService;
import com.qdu.service.TeacherService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminController {

    @Autowired
    private StudentService studentService;
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private BatchService batchService;
    @Autowired
    private FacultyService facultyService;
    @Autowired
    private CourseService courseService;
    @Resource
    private ProfessionalService professionalServic;
    @Resource
    private ScoreService scoreServic;
    @Resource
    private ProfessionalPlanService professionalPlanService;
    Page p=new Page();
    Page p2=new Page();
    @RequestMapping({"/studentManage"})
    public String studentManage(Model model,String page) {
        int page1=Integer.valueOf(page);
        p.setTotalUsers(studentService.getStudentList().size());
        p.setCurrentPage(page1); 
        List<Student> list = studentService.getListByPageNumberAndSize(page1,p.getPageSize());
        model.addAttribute("studentList", list);
        model.addAttribute("page", p);
        return "manager/studentmanage";
    }
    @RequestMapping({"/teacherManage"})
    public String teacherManage(Model model,String page) {
        int page1=Integer.valueOf(page);
        p2.setTotalUsers(teacherService.getTeacherList().size());
        p2.setCurrentPage(page1); 
        List<Student> list = teacherService.getListByPageNumberAndSize(page1,p2.getPageSize());
        model.addAttribute("teacherList", list);
        model.addAttribute("page", p2);
        return "manager/teachermanage";
    }

    @RequestMapping({"/batchManage"})
    public String batchManage(Model model) {
        List<Batch> list = batchService.getBatchList();
        model.addAttribute("batchList", list);
        return "manager/batchmanage";
    }

    @RequestMapping({"/facultyManage"})
    public String facultyManage(Model model) {
        List<Faculty> list = facultyService.getFacultyList();
        model.addAttribute("facultyList", list);
        return "manager/facultymanage";
    }

    @RequestMapping({"/courseManage"})
    public String courseManage(Model model,String page) {
        int page1=Integer.valueOf(page);
        p.setTotalUsers(courseService.getCourseList().size());
        p.setCurrentPage(page1); 
        List<Course> list  = courseService.getListByPageNumberAndSize(page1,p.getPageSize());
        model.addAttribute("page", p);
        model.addAttribute("courseList", list);
        return "manager/coursemanage";
    }

    @RequestMapping({"/professionalManage"})
    public String professionalManage(Model model) {
        List<Professional> list = professionalServic.getProfessionalList();
        model.addAttribute("professionalList", list);
        return "manager/professionalmanage";
    }

    @RequestMapping({"/scoreManage"})
    public String scoreManage(Model model,String page) {
        int page1=Integer.valueOf(page);
        p.setTotalUsers(scoreServic.getScoreList().size());
        p.setCurrentPage(page1); 
        List<Score> list = scoreServic.getListByPageNumberAndSize(page1,p.getPageSize());
        model.addAttribute("page", p);
        model.addAttribute("scoreList", list);
        return "manager/scoremanage";
    }

    
    @RequestMapping({"/professionalPlanManage"})
    public String professionalPlanManage(Model model,String page) {
        int page1=Integer.valueOf(page);
        p.setTotalUsers(professionalPlanService.getProfessionalPlanList().size());
        p.setCurrentPage(page1); 
        List<ProfessionalPlan> list = professionalPlanService.getListByPageNumberAndSize(page1,p.getPageSize());;
        model.addAttribute("professionalPlanList", list);
        model.addAttribute("page", p);
        return "manager/professionalplanmanage";
    }

    @RequestMapping({"/addStudent.do"})
    public String addStudentDo(Model model) {
        return "manager/studentadd";
    }

    @RequestMapping({"/addStudent"})
    public String addStudent(HttpServletRequest request, Model model) {
        Student  student=studentService.transfer(request);
        try {
            studentService.addStudent(student);
        } catch (Exception e) {
            System.out.println("插入失败！");
            return "fail";
        }
        System.out.println("插入成功！");
        return "manager/studentmanage";
    }
    
    @RequestMapping({"/studentDelete"})
    public String studentDelete(Model model, String id) {
        try {
            studentService.deleteStudent(id);
        } catch (Exception e) {
            System.err.println("删除失败！");
            return "fail";
        }
        System.out.println("删除成功！");
        return "forward:studentManage?page=1";
    }
    
    @RequestMapping({"/studentQuery"})
    public String studentQuery(Model model, String id) {
        Student student=studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "manager/showStudent";
    }
    
    @RequestMapping({"/studentQueryByBatch"})
    public String studentQueryByBatch(Model model, String batch) {
        List<Student> students=studentService.getStudentListByBatchName(batch);
        model.addAttribute("studentList", students);
        return "manager/showStudentByBatch";
    }
    
    @RequestMapping({"/studentModify.do"})
    public String studentModifyDo(Model model, String id) {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "manager/studentmodify";
    }

    @RequestMapping({"/studentModify"})
    public String studentModify(HttpServletRequest request) {
        Student student=studentService.transfer(request);
        studentService.updateStudent(student);
        return "forward:studentManage?page=1";
    }

    @RequestMapping({"/addTeacher.do"})
    public String addTeacherDo(Model model) {
        return "manager/teacheradd";
    }

    @RequestMapping({"/addTeacher"})
    public String addTeacher(Model model, Teacher teacher) {
        try {
            teacherService.addTeacher(teacher);
        } catch (Exception e) {
            System.err.println("插入失败！>");
            return "fail";
        }
        System.out.println("插入成功！");
        return "forward:teacherManage?page=1";
    }

    @RequestMapping({"/teacherDelete"})
    public String teacherDelete(Model model, String id) {
        try {
            teacherService.deleteTeacher(id);
        } catch (Exception e) {
            System.err.println("删除失败！");
            return "fail";
        }
        System.out.println("删除成功！");
        return "forward:teacherManage?page=1";
    }

    @RequestMapping({"/teacherModify.do"})
    public String teacherModifyDo(Model model, String id) {
        Teacher teacher = teacherService.getTeacherById(id);
        model.addAttribute("teacher", teacher);
        return "manager/teachermodify";
    }
    @RequestMapping({"/teacherModify"})
    public String teacherModify(Model model, Teacher teacher) {
        try {
            teacherService.updateTeacher(teacher);
        } catch (Exception e) {
            System.err.println("更新失败！");
            return "fail";
        }
        System.out.println("更新成功！");
        return "forward:teacherManage?page=1";
    }

    @RequestMapping({"/teacherQuery"})
    public String teacherQuery(Model model, String name) {
        List<Teacher> list = teacherService.getTeacherByName(name);
        model.addAttribute("teacherList", list);
        return "manager/teachermanage";
    }

    @RequestMapping({"/addBatch.do"})
    public String addBatchDo(Model model) {
        return "manager/batchadd";
    }

    @RequestMapping({"/addBatch"})
    public String addBatch(Model model, Batch batch) {
        try {
            batchService.addBatch(batch);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("插入失败！");
            return "fail";
        }
        System.out.println("插入成功！");
        return "forward:batchManage";
    }

    @RequestMapping({"/batchDelete"})
    public String batchDelete(Model model, String name) {
        try {
            batchService.deleteBatch(name);
        } catch (Exception e) {
            System.err.println("删除失败！");
            return "fail";
        }
        System.out.println("删除成功！");
        return "forward:batchManage";
    }

    @RequestMapping({"/batchModify.do"})
    public String batchModifyDo(Model model, String name) {
        Batch batch = batchService.getBatchByName(name);
        model.addAttribute("batch", batch);
        return "manager/batchmodify";
    }

    @RequestMapping({"/batchModify"})
    public String batchModify(Model model, Batch batch) {
        try {
            batchService.updateBatch(batch);
        } catch (Exception e) {
            System.err.println("更新失败！");
            return "fail";
        }
        System.out.println("更新成功！");
        return "forward:batchManage";
    }

    @RequestMapping({"/addProfessional.do"})
    public String addProfessionalDo(Model model) {
        return "manager/professionaladd";
    }

    @RequestMapping({"/addProfessional"})
    public String addProfessional(Model model, Professional professional) {
        try {
            professionalServic.addProfessional(professional);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("插入失败！");
            return "fail";
        }
        System.out.println("插入成功！");
        return "forward:professionalManage";
    }

    @RequestMapping({"/professionalDelete"})
    public String professionalDelete(Model model, String name) {
        try {
            professionalServic.deleteProfessional(name);
        } catch (Exception e) {
            System.err.println("删除失败！");
            return "fail";
        }
        System.out.println("删除成功！");
        return "forward:professionalManage";
    }

    @RequestMapping({"/professionalModify.do"})
    public String professionalModifyDo(Model model, String name) {
        Professional professional = professionalServic.getProfessionalByName(name);
        model.addAttribute("professional", professional);
        return "manager/professionalmodify";
    }

    @RequestMapping({"/professionalModify"})
    public String professionalModify(Model model, Professional professional) {
        try {
            professionalServic.updateProfessional(professional);
        } catch (Exception e) {
            System.err.println("更新失败！");
            return "fail";
        }
        System.out.println("更新成功！");
        return "forward:professionalManage";
    }

    @RequestMapping({"/addfaculty.do"})
    public String addFacultyDo(Model model) {
        return "manager/facultyadd";
    }

    @RequestMapping({"/addFaculty"})
    public String addFaculty(Model model, Faculty faculty) {
        try {
            facultyService.addFaculty(faculty);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("插入失败！");
            return "fail";
        }
        System.out.println("插入成功！");
        return "forward:facultyManage";
    }

    @RequestMapping({"/facultyDelete"})
    public String facultyDelete(Model model, String name) {
        try {
            facultyService.deleteFaculty(name);
        } catch (Exception e) {
            System.err.println("删除失败！");
            return "fail";
        }
        System.out.println("删除成功！");
        return "forward:facultyManage";
    }

    @RequestMapping({"/facultyModify.do"})
    public String facultyModifyDo(Model model, String name) {
        Faculty faculty = facultyService.getFacultyByName(name);
        model.addAttribute("faculty", faculty);
        return "manager/facultymodify";
    }

    @RequestMapping({"/facultyModify"})
    public String facultyModify(Model model, Faculty faculty) {
        try {
            facultyService.updateFaculty(faculty);
        } catch (Exception e) {
            System.err.println("更新失败！");
            return "fail";
        }
        System.out.println("更新成功！");
        return "forward:facultyManage";
    }

    @RequestMapping({"/addProfessionalPlan.do"})
    public String addProfessionalPlanDo(Model model) {
        return "manager/professionalPlanadd";
    }

    @RequestMapping({"/addProfessionalPlan"})
    public String addProfessionalPlan(Model model, ProfessionalPlan professionalPlan) {
        try {
            professionalPlanService.addProfessionalPlan(professionalPlan);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("插入失败！");
            return "fail";
        }
        System.out.println("插入成功！");
        return "forward:professionalPlanManage?page=1";
    }

    @RequestMapping({"/professionalPlanDelete"})
    public String professionalPlanDelete(Model model, int id) {
        try {
            professionalPlanService.deleteProfessionalPlan(id);
        } catch (Exception e) {
            System.err.println("删除失败！");
            return "fail";
        }
        System.out.println("删除成功！");
        return "forward:professionalPlanManage?page=1";
    }

    @RequestMapping({"/professionalPlanModify.do"})
    public String professionalPlanModifyDo(Model model, int id) {
        ProfessionalPlan professionalPlan = professionalPlanService.getProfessionalPlanById(id);
        model.addAttribute("professionalPlan", professionalPlan);
        return "manager/professionalPlanmodify";
    }

    @RequestMapping({"/professionalPlanModify"})
    public String professionalPlanModify(Model model, ProfessionalPlan professionalPlan) {
        try {
            professionalPlanService.updateProfessionalPlan(professionalPlan);
        } catch (Exception e) {
            System.err.println("更新失败！");
            return "fail";
        }
        System.out.println("更新成功！");
        return "forward:professionalPlanManage?page=1";
    }

    @RequestMapping({"/addCourse.do"})
    public String addCourseDo(Model model) {
        return "manager/courseadd";
    }

    @RequestMapping({"/addCourse"})
    public String addCourse(Model model, Course course) {
        try {
            courseService.addCourse(course);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("插入失败！");
            return "fail";
        }
        System.out.println("插入成功！");
        return "forward:courseManage?page=1";
    }

    @RequestMapping({"/courseDelete"})
    public String courseDelete(Model model, String id) {
        try {
            courseService.deleteCourse(id);
        } catch (Exception e) {
            System.err.println("删除失败！");
            return "fail";
        }
        System.out.println("删除成功！");
        return "forward:courseManage";
    }

    @RequestMapping({"/courseModify.do"})
    public String courseModifyDo(Model model, String id) {
        Course course = courseService.getCourseById(id);
        model.addAttribute("course", course);
        return "manager/coursemodify";
    }

    @RequestMapping({"/courseModify"})
    public String courseModify(Model model, Course course) {
        try {
            courseService.updateCourse(course);
        } catch (Exception e) {
            System.err.println("更新失败！");
            return "fail";
        }
        System.out.println("更新成功！");
        return "forward:courseManage?page=1";
    }

     @RequestMapping({"/scheduleAdd.do"})
    public String scheduleAddDo(Model model) {
        return "manager/scheduleAdd";
    }

    @RequestMapping({"/professionalPlanQuery"})
    public String professionalPlanQuery(Model model,String name) {
        List list=professionalPlanService.getProfessionalPlanByName(name);
        model.addAttribute("professionalPlan",list);
        System.out.println("成功！");
        return "manager/showProfessionalPlan";
    }
    
    @RequestMapping({"/studentProfessionalPlanQuery"})
    public String studentProfessionalPlanQuery(Model model,String name) {
        System.out.println("WWWWWWWWWWWWWWWWWWWWWWWW"+name);
        List list=null;
        try {
            list=professionalPlanService.getProfessionalPlanLinkedCourse(name);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        model.addAttribute("professionalPlan",list);
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!！");
        return "student/showProfessionalPlan";
    }
    
    @RequestMapping({"/addScore.do"})
    public String scoreAddDo(Model model) {
        return "manager/scoreadd";
    }
    
    @RequestMapping(value = "/addScore")
    public String scoreAdd( ScoreId id,String score,String pass) {
        scoreServic.addScore(new Score(id, Integer.valueOf(score), pass));
        return "forward:scoreManage?page=1";
    }
    
    @RequestMapping({"/scoreQuery"})
    public String scoreQuery(Model model,String id,Boolean asc) {
        List list=scoreServic.getListById(id,asc);
        model.addAttribute("score",list);
        model.addAttribute("id",id);
        System.out.println("成功！");
        return "manager/showScore";
    }
    @RequestMapping({"/scoreQuery2"})
    public String scoreQuery2(Model model,String id,Boolean asc) {
        List list=scoreServic.getListById(id,asc);
        model.addAttribute("score",list);
        model.addAttribute("id",id);
        System.out.println("成功！");
        return "student/showScore";
    }
    
    @RequestMapping({"/scoreDelete"})
    public String scoreDelete(Model model, ScoreId  id) {
        try {
            scoreServic.deleteScore(id);
        } catch (Exception e) {
            System.err.println("删除失败！");
            return "fail";
        }
        System.out.println("删除成功！");
        return "forward:scoreManage?page=1";
    }

    @RequestMapping({"/scoreModify.do"})
    public String courseModifyDo(Model model,ScoreId  id) {
        Score score = scoreServic.getScoreById(id);
        model.addAttribute("score", score);
        return "manager/scoremodify";
    }

    @RequestMapping({"/scoreModify"})
    public String scoreModify(Model model, ScoreId id,String score,String pass) {
        try {
            scoreServic.updateScore(new Score(id, Integer.valueOf(score), pass));
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("<script language='javascript'>alert('更新失败！');</script>");
            return "fail";
        }
        System.out.println("<script language='javascript'>alert('更新成功！');</script>");
        return "forward:scoreManage?page=1";
    }
    @RequestMapping({"/coursePlanAdd.do"}) 
    public String coursePlanAddDo(Model model) {
        return "manager/courseplanadd";
    }

    @RequestMapping({"/accountmanage"})
    public String accountManage(Model model) {
        return "student/accountManage";
    }

    @RequestMapping("/modifyStudentPwd.do")
    public String modifyStudentPwdDo(Model model) {
        return "student/alterPassword";
    }
    @RequestMapping("/modifyTeacherPwd.do")
    public String modifyTeacherPwdDo(Model model) {
        return "teacher/alterPassword";
    }
    @RequestMapping("/modifyStudentPwd")
    @ResponseBody
    public void modifyStudentPwd(String password,HttpSession session) {
        Student student=(Student)session.getAttribute("student");
        student.setPassword(password);
        try {
            studentService.updateStudent(student);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/modifyTeacherPwd")
    public void modifyTeacherPwd(String password,HttpSession session,HttpServletResponse response) {
        Teacher teacher=(Teacher)session.getAttribute("teacher");
        teacher.setPassword(password);
        PrintWriter out=null;
        try {
            out = response.getWriter();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        try {
            teacherService.updateTeacher(teacher);
        } catch (Exception e) {
            out.println("<script language='javascript'>alert('更新失败！');</script>");
        }
        out.println("<script language='javascript'>alert('修改密码成功！请重新登录');top.location.href='login';</script>");
    }
    
    @RequestMapping("/courseAndScore")
    public String courseAndScore(Model model,HttpSession session){
        Student student=(Student)session.getAttribute("student");
        System.out.println("z这是课程与成绩");
        List<Score> list = scoreServic.getListById(student.getId(), Boolean.FALSE);
        model.addAttribute("list",list);
        return "student/coureseAndScore";
    }
    
    @RequestMapping("/accountmanageofteacher")
    public String accountManageOfTeacher(Model model,HttpServletRequest request){
        return "teacher/accountManage";
    }
    
    @RequestMapping("/getStudentListToAddScore")
    public String getStudentListToAddScore(Model model,String batch,String course,HttpSession session ){
        Teacher teacher=(Teacher)session.getAttribute("teacher");
        List list = scoreServic.getStudentListToAddScore(teacher.getId(), batch, course);
        List scoreList = scoreServic.getStudentListToExel(teacher.getId(), batch, course);
        model.addAttribute("list", list);
        model.addAttribute("scoreList", scoreList);
        return "teacher/addScore";
    }
    
    @RequestMapping("/AddScore")
    public String AddScore(Model model,HttpServletRequest request) {
        List<String> ids= Arrays.asList(request.getParameterValues("stuid")); 
        List<String> courses= Arrays.asList(request.getParameterValues("course")); 
        List<String> scores= Arrays.asList(request.getParameterValues("score")); 
        List<String> passes= Arrays.asList(request.getParameterValues("pass")); 
        for (int i=0;i<ids.size();i++) {
            Score score=new Score(new ScoreId(ids.get(i),courses.get(i)),Integer.valueOf(scores.get(i)),passes.get(i));
            try {
                scoreServic.addScore(score);
            } catch (Exception e) {
               scoreServic.updateScore(score);
            }
        }
        return "forward:chengjiweihu";
    }
}
