package cn.tedu.ttms.system.service.impl;

import cn.tedu.ttms.common.web.PageObject;
import cn.tedu.ttms.system.dao.OrganizationDao;
import cn.tedu.ttms.system.entity.Organization;
import cn.tedu.ttms.system.service.OrganizationService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: lulin
 * @Date: 4/15/2019 2:40 AM
 * @Version 1.0
 */
@Service
public class OrganizationServiceImpl implements OrganizationService{

    @Resource
    OrganizationDao organizationDao;

    @Override
    public Map<String,Object>  findOrgObject(Organization organization, PageObject pageObject) {
        List<Map<String, Object>> list = organizationDao.findOrgObjects(organization,pageObject);
        int rows=organizationDao.getOrgRowsCounts(organization);
        //不管nulll exist 都要填充
        pageObject.setRowCount(rows);
        Map<String,Object> map=new HashMap<>();
        map.put("list",list);
        map.put("pageObject",pageObject);
        if(list==null){
            throw new RuntimeException("没有找到数据");
        }
        return map;
    }

    @Override
    public List<Map<String, Object>> findPageObject(Organization organization, PageObject pageObject) {
        int rows=organizationDao.getRowCounts(organization);
        pageObject.setRowCount(rows);
        List<Map<String, Object>> list = organizationDao.findPageObjects(organization,pageObject);
        if(list==null){
            throw new RuntimeException("没有找到数据");
        }
        return list;
    }

    @Override
    public void saveObejct(Organization organization) {
        /*   id name code parentId valid note*/
       int result= organizationDao.insertObject(organization);
       if(result==-1){
           throw new RuntimeException("更新不成功");
       }
    }

    @Override
    public void update(Organization organization) {
        int result= organizationDao.updateObject(organization);
        if(result==-1){
            throw new RuntimeException("更新不成功");
        }
    }

    @Override
    public Organization findObjectById(Long id) {
        Organization organization =organizationDao.findObjectById(id);
        return organization;
    }

    @Override
    public List<Map<String,Object>> findIdAndName() {
       List<Map<String,Object>> list= organizationDao.findIdAndNames();
       if(list==null){
            throw  new RuntimeException("没有找到相关的Organization Id和Name");
        }
       return list;
    }

    @Override
    public void doValidById(String ids,int valid) {
        String[] idArray=ids.split(",");
        int result = organizationDao.doValidById(idArray,valid);
        if(result==-1){
            throw new RuntimeException("更新不成功");
        }
    }



    @Override
    public Organization findById(long id) {
        Organization organization= organizationDao.findObjectById(id);
        if(organization == null){
            throw new RuntimeException("没有找到相关数据");
        }
        return organization;
    }



}

