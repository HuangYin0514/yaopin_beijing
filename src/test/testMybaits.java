package test;

import com.tcmkb.dao.SystemConfigsDao;
import com.tcmkb.model.Users;
import com.tcmkb.model.UsersWithBLOBs;
import com.tcmkb.service.UsersLogActionService;
import com.tcmkb.service.UsersLogLoginService;
import com.tcmkb.utils.IndexResult;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class testMybaits {

    @Test
    public void a() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");//这里路径之前没有配对于是一直出错
        SystemConfigsDao t1 = (SystemConfigsDao) context.getBean("systemConfigsDao");
         t1.listAllwithNoParam();

    }
    @Test
    public void b(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");//这里路径之前没有配对于是一直出错
        UsersLogLoginService usersLogLoginService= (UsersLogLoginService) context.getBean("usersLogLoginService");
        Users users = new Users();
        users.setAccount("123");
        users.setPass("2314");
        IndexResult indexResult = usersLogLoginService.queryUser(users);
        System.out.println(indexResult);

    }
    @Test
    public void c(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");//这里路径之前没有配对于是一直出错
        UsersLogActionService t1 = (UsersLogActionService) context.getBean("usersLogActionService");
        UsersWithBLOBs usersWithBLOBs = new UsersWithBLOBs();
        usersWithBLOBs.setAccount("asjkdfaklsjdhf");
        t1.saveUser(usersWithBLOBs);
    }



}
