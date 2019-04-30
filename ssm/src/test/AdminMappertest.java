package test;


import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import Bean.Admin;
import Bean.Adminvo;
import database.AdminMapper;

public class AdminMappertest{

    ApplicationContext applicationContext = null;

    public void setUp() throws Exception {

        applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
    }



    public void testFindItemsList() throws Exception {
        AdminMapper ad =  applicationContext.getBean(AdminMapper.class);
        List<Adminvo> sh = ad.showalladmin();
        for(Admin a:sh)
        {
        	System.out.println(a.getId());
        }

      

    }

}
