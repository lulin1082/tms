package cn.tedu.ttms.system.service;

import cn.tedu.ttms.system.entity.Organization;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;*/
import org.springframework.transaction.jta.SpringJtaSynchronizationAdapter;

import javax.annotation.Resource;

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

public class OrganizationServiceTest {


   /* @Autowired
    OrganizationService organizationService;

    @Test
    public void findOrgObject()  {
        organizationService.findOrgObject(null,null);
    }

    @Test
    public void findPageObject()   {
        organizationService.findOrgObject(null,null);
    }

    @Test
    public void findById()   {
        organizationService.findById((long)3);
    }

    @Test
    public void saveObejct()  {
        Organization organization = null;
        organizationService.saveObejct(organization);
    }

    @Test
    public void update() throws   {
        Organization organization = new Organization();
        Map map=organizationService.findById((long)3);
       long id=(Long)map.get("id");
        organization.setId(id);
        organization.setCreatedtime(new Date());
        organizationService.update(organization);

    }

    @Test
    public void doValidById() throws Exception {
        String ids="1,2,3,4,5,6,7";
        organizationService.doValidById(ids,1);
    }*/

}