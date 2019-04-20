package cn.tedu.ttms.system.service;

import cn.tedu.ttms.common.web.PageObject;
import cn.tedu.ttms.system.entity.Organization;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

/**
 * @Author: lulin
 * @Date: 4/15/2019 2:38 AM
 * @Version 1.0
 */

@Service
public interface OrganizationService {
    Map<String,Object>  findOrgObject(Organization organization, PageObject pageObject);
    List<Map<String,Object>> findPageObject(Organization organization, PageObject pageObject);
    Organization findById(long id);
    void saveObejct(Organization organization);
    void update(Organization organization);
    void doValidById(String ids,int valid);

    Organization findObjectById(Long id);

    Map<String,Object> findIdAndName();
}
