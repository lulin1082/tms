package cn.tedu.ttms.system.controller;

import cn.tedu.ttms.common.web.JsonResult;
import cn.tedu.ttms.system.service.OrganizationService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @Author: lulin
 * @Date: 3/31/2019 6:29 PM
 * @Version 1.0
 */
@Controller
@RequestMapping("/org")
public class OrganizationController {


   @Resource
    OrganizationService organizationService;

    @RequestMapping("/editUI")
    public String editUI(){
        return "system/organization_edit";
    }

    @RequestMapping("/listUI")
    public String listUI(){
        return  "system/organization_list";
    }


    @RequestMapping("findObjects")
    @ResponseBody
    public JsonResult findObject(){
        List<Map<String, Object>> list = organizationService.findObject();
        return new JsonResult(list);
    }
   /* findObjects
    save
    update
            findById
    doValidById*/
}
