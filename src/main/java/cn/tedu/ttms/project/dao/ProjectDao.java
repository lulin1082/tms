package cn.tedu.ttms.project.dao;

import cn.tedu.ttms.attachement.entity.Attachement;
import cn.tedu.ttms.common.dao.BaseDao;
import cn.tedu.ttms.common.web.PageObject;
import cn.tedu.ttms.project.entity.Project;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 此接口对象为一个数据访问对象(关联一个mapper)
 * 所在层:DAL(数据访问层)
 */

@Repository
public interface ProjectDao extends BaseDao<Project> {

    /**
      * @return 表示insert记录的行数
     */
    public List<Project> findObjects();

    public int validById(@Param("ids") String[] ids, @Param("valid") Integer valid);

    public List<Map<String, Object>> findIdAndNames();

}









