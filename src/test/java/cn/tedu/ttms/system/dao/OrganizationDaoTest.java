package cn.tedu.ttms.system.dao;

import cn.tedu.ttms.common.BaseTest;
import cn.tedu.ttms.common.web.PageObject;
import cn.tedu.ttms.system.entity.Organization;
import org.junit.Test;

import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;

public class OrganizationDaoTest extends BaseTest{
     OrganizationDao organizationDao;
    @Test
    public void findOrgObjects() {
        Organization organization = new Organization();
        organization.setName("东北");
        PageObject pageObject =new PageObject();
        pageObject.setPageCurrent(1);
        organizationDao =ctx.getBean(OrganizationDao.class);
        List<Map<String,Object>> list=organizationDao.findOrgObjects(organization,pageObject);
        System.out.println(list.toString());
    }

    @Test
    public void getOrgRowsCounts() {
    }

    @Test
    public void findIdAndNames() {
    }

    @Test
    public void doValidById() {
    }
}