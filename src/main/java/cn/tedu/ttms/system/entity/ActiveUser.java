package cn.tedu.ttms.system.entity;

import java.util.List;

/**
 * @Author: lulin
 * @Date: 4/14/2019 10:02 AM
 * @Version 1.0
 */
public class ActiveUser implements java.io.Serializable {
    private String userid;//用户id（主键）
    private String usercode;// 用户账号
    private String username;// 用户名称

    private List<Function> menus;// 菜单
    private List<Function> permissions;// 权限

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public List<Function> getMenus() {
        return menus;
    }

    public void setMenus(List<Function> menus) {
        this.menus = menus;
    }

    public List<Function> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<Function> permissions) {
        this.permissions = permissions;
    }


}
