package cn.tedu.ttms.system.service;

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
    List<Map<String,Object>>  findObject();

}
