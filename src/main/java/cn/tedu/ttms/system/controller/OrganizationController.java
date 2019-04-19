package cn.tedu.ttms.system.controller;

import cn.tedu.ttms.common.web.JsonResult;
import cn.tedu.ttms.common.web.PageObject;
import cn.tedu.ttms.system.entity.Organization;
import cn.tedu.ttms.system.service.OrganizationService;
import com.github.pagehelper.Page;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.aspectj.weaver.ast.Or;
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

    @RequestMapping("/findPageObjects")
    @ResponseBody
    public JsonResult findObject(Organization organization, PageObject pageObject){
        List<Map<String, Object>> list = organizationService.findPageObject(organization,pageObject);
        return new JsonResult(list);
    }

    @RequestMapping("/findOrgObejcts")
    @ResponseBody
    public JsonResult findObect( Organization organization, PageObject pageObject  ){
        List<Map<String, Object>> list= organizationService.findOrgObject( organization,  pageObject );
        return new JsonResult(list);
    }


    @RequestMapping("save")
    @ResponseBody
    public JsonResult save(Organization organization){
        organizationService.saveObejct(organization);
        return new JsonResult();
    }

    @RequestMapping("update")
    @ResponseBody
    public JsonResult update(Organization organization){
      /*  	"id":$('#modal-dialog').data('id'),
		"name":$('#nameId').val(),
		"code":$('#codeId').val(),
		"parentId": $("#modal-dialog").data("parentId"),
	    "valid":$('input[name="valid"]:checked').val(),
	    "note":$('#noteId').val()
	 */
/*   id name code parentId valid note*/
        organizationService.update(organization);
        return new JsonResult();
    }

    @RequestMapping("findById")
    @ResponseBody
    public JsonResult update(Long id){
      /*  	"id":$('#modal-dialog').data('id'),
		"name":$('#nameId').val(),
		"code":$('#codeId').val(),
		"parentId": $("#modal-dialog").data("parentId"),
	    "valid":$('input[name="valid"]:checked').val(),
	    "note":$('#noteId').val()
	 */
/*   id name code parentId valid note*/
        Organization organization=organizationService.findObjectById(id);
        return new JsonResult(organization);
    }

    @RequestMapping("doValidById")
    @ResponseBody
    public  JsonResult doValidById(String ids,int valid){
        organizationService.doValidById(ids,valid);
        return new JsonResult();
    }

 /* findObjects
    update
            findById
    doValidById*/
}
