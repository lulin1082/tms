package cn.tedu.ttms.system.dao;

import cn.tedu.ttms.common.BaseTest;
import cn.tedu.ttms.common.web.PageObject;
import cn.tedu.ttms.system.entity.Organization;
import org.junit.Assert;
import org.junit.Test;

import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;

/**
 * @Author: lulin
 * @Date: 4/23/2019 7:55 AM
 * @Version 1.0
 */
public class OrganizationDaoTest extends BaseTest{

    OrganizationDao organizationDao;

    @Test
    public void findOrgObjects() throws Exception {
        organizationDao=ctx.getBean(OrganizationDao.class);
        Organization organization=new Organization();
        organization.setName("东南");
        PageObject pageObject = new PageObject();
        pageObject.setPageCurrent(1);
        List<Map<String,Object>> list=organizationDao.findPageObjects(organization,pageObject);
        System.out.println(list.toString());
    }

    @Test
    public void getOrgRowsCounts() throws Exception {
        organizationDao=ctx.getBean(OrganizationDao.class);
        Organization organization=new Organization();
        organization.setName("东南");
        int counts=organizationDao.getOrgRowsCounts(organization);
        Assert.assertNotEquals(counts,-1);

    }

    @Test
    public void findIdAndNames() throws Exception {
        organizationDao=ctx.getBean(OrganizationDao.class);
        //List<Map<String,Object>> list = organizationDao.findIdAndNames();

    }

    @Test
    public void doValidById() throws Exception {
        organizationDao=ctx.getBean(OrganizationDao.class);
        String idsStr="1,2,3,4,5,6,7";
        String[] ids=idsStr.split(",");
        int valid =1;
        int index=organizationDao.doValidById(ids,1);
        Assert.assertNotEquals(index,-1);
    }

}