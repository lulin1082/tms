package cn.tedu.ttms.system.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @Author: lulin
 * @Date: 4/15/2019 2:41 AM
 * @Version 1.0
 */

@Repository
public interface OrganizationDao {
    public List<Map<String, Object>> findOrgObjects() ;
}

