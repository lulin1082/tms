package cn.tedu.ttms.system.service;

import cn.tedu.ttms.common.BaseTest;
import cn.tedu.ttms.system.entity.Organization;
import org.aspectj.weaver.ast.Or;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;*/
import org.springframework.transaction.jta.SpringJtaSynchronizationAdapter;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import java.util.Date;
import java.util.Map;

import static org.junit.Assert.*;

/**
 * @Author: lulin
 * @Date: 4/17/2019 12:52 AM
 * @Version 1.0
 */
/*@RunWith(BlockJUnit4ClassRunner)

*//** 注入相关的配置文件：可以写入多个配置文件 **//*
@ContextConfiguration(locations={"classpath:spring--mvc.xml",
        "classpath:spring--shiro.xml"
})*/

public class OrganizationServiceTest extends BaseTest{

    OrganizationService organizationService;
    @Test
    public void doValidd(){
        organizationService=ctx.getBean(OrganizationService.class);
        Organization organization = new Organization();
        organization.setId((long)3);
        organization.setName("南太平洋部");
        organization.setCode("DDCE");
       // HttpSession session=request.getSession();
        //Object obj=session.getAttribute("user");
        organization.setModifiedUser("");
        organizationService.update(organization);
    }

    @Test
    public void findOrgObject()  {
        organizationService=ctx.getBean(OrganizationService.class);
        organizationService.findOrgObject(null,null);
    }

    @Test
    public void findPageObject()   {
        organizationService=ctx.getBean(OrganizationService.class);
        organizationService.findOrgObject(null,null);
    }

    @Test
    public void findById()   {
        organizationService=ctx.getBean(OrganizationService.class);
        Organization organization = organizationService.findById((long)3);
        System.out.println(organization.toString());
    }

    @Test
    public void saveObejct()  {
        organizationService=ctx.getBean(OrganizationService.class);
        Organization organization = null;
        organizationService.saveObejct(organization);
    }

    @Test
    public void update()    {
        organizationService=ctx.getBean(OrganizationService.class);
        Organization organization1=organizationService.findById((long)3);
        long id=organization1.getId();
        organization1.setCreatedTime(new Date());
        organizationService.update(organization1);

    }

    @Test
    public void doValidById() throws Exception {
        organizationService=ctx.getBean(OrganizationService.class);
        String ids="1,2,3,4,5,6,7";
        organizationService.doValidById(ids,0);
    }
}