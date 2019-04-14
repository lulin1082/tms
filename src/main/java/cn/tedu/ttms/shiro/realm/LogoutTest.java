package cn.tedu.ttms.shiro.realm;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.text.IniRealm;
import org.apache.shiro.subject.Subject;
import org.junit.Test;

/**
 * @Author: lulin
 * @Date: 4/14/2019 10:11 AM
 * @Version 1.0
 */
public class LogoutTest {

    @Test
    public void testLoginAndLogout(){


        IniRealm iniRealm = new IniRealm("classpath:user.ini");
        System.out.println(iniRealm.getIni());
        DefaultSecurityManager defaultSecurityManager = new DefaultSecurityManager();
        defaultSecurityManager.setRealm(iniRealm);


        // 将securityManager设置当前的运行环境中
        SecurityUtils.setSecurityManager(defaultSecurityManager);

        // 从SecurityUtils里边创建一个subject
        Subject subject = SecurityUtils.getSubject();

        // 在认证提交前准备token（令牌）
        // 这里的账号和密码 将来是由用户输入进去
        UsernamePasswordToken token = new UsernamePasswordToken("lulin2",
                "123456");
        try {
            // 执行认证提交
            subject.login(token);
        } catch (AuthenticationException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        // 是否认证通过
        boolean isAuthenticated = subject.isAuthenticated();

        System.out.println("是否认证通过：" + isAuthenticated);

        // 退出操作
        subject.logout();

        // 是否认证通过
        isAuthenticated = subject.isAuthenticated();

        System.out.println("是否认证通过：" + isAuthenticated);
    }
}
