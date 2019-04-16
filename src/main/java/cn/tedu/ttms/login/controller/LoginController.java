package cn.tedu.ttms.login.controller;

import cn.tedu.ttms.common.web.JsonResult;
import cn.tedu.ttms.system.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.LinkedList;
import java.util.List;

/**
 * @Author: lulin
 * @Date: 3/24/2019 7:31 PM
 * @Version 1.0
 */
@Controller
public class LoginController {

   /* @Autowired
    UserRealm userRealm;*/

    Logger logger = LoggerFactory.getLogger(LoggerFactory.class);


    @RequestMapping("/toLogin")
    public String login() {
        logger.info("请求登页面");
        return "login/login";
    }

    /* @RequestMapping(value = "/comfirmUser", method = RequestMethod.POST, produces = "application/json;charset=utf-8")*/
    @RequestMapping(value = "/confirmUser", method = RequestMethod.POST)
    @ResponseBody
    public JsonResult confirmUser(String username, String userpwd, boolean remeber) {
        Subject subject = SecurityUtils.getSubject();
        //System.out.println("用户名" + username + "密码" + userpwd);

        if (!subject.isAuthenticated()) {
            System.out.println("没有记录，需要 重新 认证");
            UsernamePasswordToken token = new UsernamePasswordToken(username, userpwd);
            token.setRememberMe(remeber);
            try {
                subject.login(token);
            } catch (AuthenticationException e) {
                 throw new RuntimeException("并没有认证");
            } finally {
            }
        }
        boolean isAuthenticated = subject.isAuthenticated();
        System.out.println("认证了吗？ :  "+isAuthenticated);
        return new JsonResult();
    }



    @RequestMapping(value = "/logout")
    @ResponseBody
    public void subLogout(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        // return "退出成功";
    }


    @RequestMapping(value = "/testPerms2", method = RequestMethod.GET)
    @ResponseBody
    public String testPerms2() {
        return "testPerms1 success";
    }


    @RequestMapping(value = "/subLogin", method = RequestMethod.POST,
            produces = "application/json;charset=utf-8")
    @ResponseBody
    public JsonResult subLogin(User user) {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());

            // 设置 shiro 记住我功能
            //token.setRememberMe(user.getRememberMe());
            token.setRememberMe(true);
            subject.login(token);

        if (subject.hasRole("系统管理员")) {
            System.out.println("有 系统管理员 权限");
        }
        System.out.println("无 系统管理员 权限");
        return new JsonResult();
    }

    @RequiresRoles("系统管理员")
    @RequestMapping(value = "/testRole", method = RequestMethod.GET)
    @ResponseBody
    public JsonResult testRole() {
        List<String > list= new LinkedList();
         return new JsonResult("testRole success");
    }

    @RequiresRoles("系统管理员")
    @RequiresPermissions("product:project:view")
    @RequestMapping(value = "/testRole1", method = RequestMethod.GET)
    @ResponseBody
    public JsonResult testRole1() {
        return  new JsonResult("系统管理员");
    }

    @RequestMapping(value = "/testPerms", method = RequestMethod.GET)
    @ResponseBody
    public JsonResult testPerms() {
        return new JsonResult("testPerms success");
    }

    @RequestMapping(value = "/testPerms1", method = RequestMethod.GET)
    @ResponseBody
    public JsonResult testPerms1() {
        return new JsonResult("testPerms1 success");
    }

}
