package com.qdu.service;
import com.qdu.dao.StudentDAO;
import com.qdu.pojo.Student;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory; 
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
//事务的使用可以在dao层，也可以在Service层，建议在Service
//@Transactional:该注解用于指定事务，
//可以用在类之前，如果用在类前，说明该类中的所有方法使用该事务
//也可以用在方法前，说明事务使用在该方法中

@Service
public class StudentService{
 
    @Autowired
    private StudentDAO dao;
    private static String fileName = null;
    private static final String UPLOAD_DIRECTORY = "photo";// 上传文件存储目录
    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;  // 3MB // 上传配置-单位字节
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
    
    @Transactional
    public Student getStudentById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional
    public List getStudentList() {
        return dao.getAll();
    }
    
    @Transactional
    public List getStudentListByBatchName(String batchName) {
        return dao.getListByBatchName(batchName);
    }
    
    @Transactional
    public List getStudentListByBatchNameAndPage(String batchName,int pageNumber, int pageSize) {
        return dao.getListByBatchNameAndPage(batchName,pageNumber, pageSize);
    }

    @Transactional(propagation = Propagation.REQUIRED,timeout = 10)
    public void addStudent(Student student) {
         dao.insert(student);
    }
    
    @Transactional
    public void updateStudent(Student student) {
        dao.update(student);
    }
    
    @Transactional
    public void deleteStudent(String id) {
        dao.deleteById(id);
    }
    
    @Transactional
    public List getListByPageNumberAndSize(int pageNumber, int pageSize) {
        return dao.getListByPageNumberAndSize(pageNumber, pageSize);
    }

    @Transactional
    public Student validateLogin(String stuId, String stuPSD) {
        Student s=dao.getOneById(stuId);
        System.err.println(s.getPassword()+"      "+stuPSD);
        if(s!=null && s.getPassword().equals(stuPSD)){
            System.err.println("111111111111111111111111111111111111111111");
           return s;
        }else{
            System.err.println("22222222222222222222222222222222222222222");
            return null;
        }
    }
    public Student transfer(HttpServletRequest request){
        ArrayList<String> as = new ArrayList<String>();
        //开始配置上传参数-创建fileItem工厂
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(MEMORY_THRESHOLD);// 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));// 设置临时存储目录
        ServletFileUpload upload = new ServletFileUpload(factory); //创建文件上传核心组件
        upload.setFileSizeMax(MAX_FILE_SIZE); // 设置最大上传文件的阈值
        upload.setSizeMax(MAX_REQUEST_SIZE);// 设置最大请求值 (包含文件和表单数据)
        upload.setHeaderEncoding("UTF-8"); // 中文处理
        // 构造临时路径来存储上传的文件
        // 这个路径相对当前应用的目录
        String uploadPath = request.getServletContext().getRealPath("/") + File.separator + UPLOAD_DIRECTORY;
        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        try {
            // 解析请求的内容提取文件数据
            List<FileItem> formItems = upload.parseRequest(request);
            if (formItems != null && formItems.size() > 0) {
                // 遍历Items表单数据
                for (FileItem item : formItems) {
                    if (item.isFormField()) {
                        String value = item.getString("utf-8");
                        as.add(value);
                    }
                    // 处理不在表单中的字段
                    if (!item.isFormField()) {
                        fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;//获取文件保存在服务器的路径
                        File storeFile = new File(filePath);//这个路径已经包含了图片名称，放到file对象中保存。
                        System.out.println(filePath); // 在控制台输出文件的上传路径
                        item.write(storeFile);// 保存文件到硬盘
                        request.setAttribute("message", "文件上传成功!" + "<br>存于：" + filePath);
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("message", "错误信息: " + ex.getMessage());
        }
        System.out.println(as.get(0) + "  " + as.get(1) + "  " + as.get(2) + "  " + as.get(3) + "  " + as.get(4) + "  " + as.get(5) + "  " + as.get(6));
        Student student = new Student(as.get(0), as.get(1), as.get(2), as.get(3), as.get(4), as.get(5), as.get(6), fileName);
        return student;
    }
}
