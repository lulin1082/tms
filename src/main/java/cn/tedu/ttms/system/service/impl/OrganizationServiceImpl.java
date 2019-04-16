package cn.tedu.ttms.system.service.impl;

import cn.tedu.ttms.system.dao.OrganizationDao;
import cn.tedu.ttms.system.service.OrganizationService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
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
    public List<Map<String, Object>> findObject() {
        List<Map<String, Object>> list = organizationDao.findOrgObjects();
        return list;
    }
}
