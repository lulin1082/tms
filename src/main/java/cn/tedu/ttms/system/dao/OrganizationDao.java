package cn.tedu.ttms.system.dao;

import cn.tedu.ttms.common.dao.BaseDao;
import cn.tedu.ttms.common.web.PageObject;
import cn.tedu.ttms.system.entity.Organization;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @Author: lulin
 * @Date: 4/15/2019 2:41 AM
 * @Version 1.0
 */

@Repository
public interface OrganizationDao extends BaseDao<Organization> {
      List<Map<String, Object>> findOrgObjects(@Param("entity")Organization organization,@Param("pageObject")PageObject pageObject) ;
      int getOrgRowsCounts(@Param("entity")Organization organization);
      Map<String,Object> findIdAndNames();
      int doValidById(@Param(value = "ids") String[] ids,@Param(value = "valid") Integer valid);


}

