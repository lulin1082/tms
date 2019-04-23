package cn.tedu.ttms.common.util;

import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.Set;

/**
 * @Author: lulin
 * @Date: 3/27/2019 6:56 PM
 * @Version 1.0
 */

@Component
public class JedisUtil {


    @Autowired
    private JedisPool jedisPool;

    private Jedis getResource(){
        return jedisPool.getResource();
    }

    public byte[] set(byte[] key,byte[] value) {
        Jedis jedis=getResource();
         try {
            jedis.set(key,value);
            return value;
        }finally {
            jedis.close();
        }
    }

    public void expire(byte[] key,int expireTime) {
        Jedis jedis=getResource();
        try {
             jedis.expire(key, expireTime);
        }finally {
            jedis.close();
        }

    }

    public byte[] get(byte[] key) {
        Jedis jedis=getResource();
        try{
           return  jedis.get(key);
        }finally {
            jedis.close();
        }
    }

    public void delete(byte[] key) {
        Jedis jedis=getResource();
        try {
            jedis.del(key);
        }finally {
            jedis.close();
        }
    }

   /* public Set<byte[]> keys(byte[] keys) {
        Jedis jedis=getResource();
        try {
            return jedis.keys(keys);
        }finally {
            jedis.close();
        }
    }*/

     public Set<byte[]> keys(String prefix) {
        try (Jedis jedis = getResource()) {
            return jedis.keys((prefix + "*").getBytes());
        }
    }

    /*public void keys(byte[] keys) {
        Jedis jedis=getResource();
        try {
            jedis.keys(keys);
        }finally {
            jedis.close();
        }
    }*/
}
