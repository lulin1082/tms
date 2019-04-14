package cn.tedu.ttms.shiro.session;

import cn.tedu.ttms.common.util.JedisUtil;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.UnknownSessionException;
import org.apache.shiro.session.mgt.eis.AbstractSessionDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.CollectionUtils;
import org.springframework.util.SerializationUtils;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/**
 * @Author: lulin
 * @Date: 3/27/2019 6:54 PM
 * @Version 1.0
 */
public class RedisSessionDao extends AbstractSessionDAO {

    private final static Logger logger = LoggerFactory.getLogger(AbstractSessionDAO.class);

    /*@Resource
    private JedisPool jedisPool;
*/
    @Resource
    private JedisUtil jedisUtil;

    private final String SHIRO_SESSION_PREFIX = "tms_session:";

    private byte[] getKey(String session) {
        return (this.SHIRO_SESSION_PREFIX + session).getBytes();
    }

    private void saveSession(Session session) {
        logger.info("RedisSessionDao statci  存储 saveSession");

        if (session != null && session.getId() != null) {
            byte[] key = getKey(session.getId().toString());
            byte[] value = SerializationUtils.serialize(session);
            jedisUtil.set(key, value);
            jedisUtil.expire(key, 600);
        }
    }

    @Override
    protected Serializable doCreate(Session session) {
        logger.info("RedisSessionDao 初始化CreateSession");
        Serializable sessionId = generateSessionId(session);
        /*sessionId捆绑*/
        assignSessionId(session, sessionId);
        saveSession(session);

        return sessionId;
    }

    @Override
    protected Session doReadSession(Serializable sessionId) {
        logger.info("RedisSessionDao      读取ReadSession");
        System.out.println("read session 在ReisSession 中 doReadSession(); ");
        if (sessionId == null) {
            return null;
        }
        byte[] key = getKey(sessionId.toString());
        byte[] value = jedisUtil.get(key);
        /*反序列化*/
        return (Session) SerializationUtils.deserialize(value);
    }

    @Override
    public void update(Session session) throws UnknownSessionException {
        logger.info("RedisSessionDao  更新updateSession");

        saveSession(session);
    }

    @Override
    public void delete(Session session) {
        logger.info("RedisSessionDao    删除deleteSession");
        if (session == null || session.getId() == null) {
            return;
        }
        byte[] key = getKey(session.getId().toString());
        jedisUtil.delete(key);
    }

    @Override
    public Collection<Session> getActiveSessions() {

        logger.info("RedisSessionDao   获取所有getActiveSession");
      /*  byte keys[] = (this.SHIRO_SESSION_PREFIX + "*").getBytes();
        Set<byte[]> keySet = jedisUtil.keys(keys);
        Set<Session> sessionSet = new HashSet<Session>();
        if (CollectionUtils.isEmpty(keySet)) {
            return sessionSet;
        }
        for (byte[] key : keySet) {
            Session session = (Session) SerializationUtils.deserialize(jedisUtil.get(key));
            sessionSet.add(session);
        }
        return sessionSet;*/
         Set<byte[]> keys = jedisUtil.keys(SHIRO_SESSION_PREFIX);
        Set<Session> sessions = new HashSet<>();
        if (CollectionUtils.isEmpty(keys)) {
            return sessions;
        }
        for (byte[] key : keys) {
            Session session = (Session) SerializationUtils.deserialize(jedisUtil.get(key));
            sessions.add(session);
        }
        return sessions;
    }
}
