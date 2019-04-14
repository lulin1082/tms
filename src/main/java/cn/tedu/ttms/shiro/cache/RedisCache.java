package cn.tedu.ttms.shiro.cache;

import cn.tedu.ttms.common.util.JedisUtil;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheException;
import org.springframework.stereotype.Component;
import org.springframework.util.SerializationUtils;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @author lulin
 *         2018/11/4 21:15
 */
@Component
public class RedisCache<K, V> implements Cache<K, V> {

    private final String CACHE_PREFIX = "lulin-cache:";
    /*private ConcurrentHashMap<byte[],byte[]> concurrentHashMap =new ConcurrentHashMap<byte[], byte[]>();*/

    @Resource
    private JedisUtil jedisUtil;

    @SuppressWarnings("unchecked")
    @Override
    public V get(K k) throws CacheException {
        System.out.println("RediaCache:   从redis获取");
        byte[] value = jedisUtil.get(getKey(k));
        if (value != null) {
            return (V) SerializationUtils.deserialize(value);
        }
        return null;
      /*  byte[] key=getKey(k);
        if(this.concurrentHashMap.containsKey(key)){
            byte[] value=concurrentHashMap.get(key);
            if(value!=null)
            {
                //logger.info("从本地内存中获取");
                            System.out.println("RediaCache:  从本地内存中获取");
                return  (V) SerializationUtils.deserialize(value);
            }
        }else{
            System.out.println("RediaCache:   从redis获取");
            //logger.info("从redis获取");
            byte[] value2=jedisUtil.get(key);
            if(value2!=null){
                return (V) SerializationUtils.deserialize(value2);
            }
         return  null;*/
    }

    @Override
    public V put(K k, V v) throws CacheException {
        System.out.println("RediaCache:    redis存入 put");

        byte[] key = getKey(k);
        byte[] value = SerializationUtils.serialize(v);
/*
        this.concurrentHashMap.put(key,value);
*/
        jedisUtil.set(key, value);
        jedisUtil.expire(key, 600);
        return v;
    }

    @SuppressWarnings("unchecked")
    @Override
    public V remove(K k) throws CacheException {
        System.out.println("RediaCache:    redis删除 remove");

        byte[] key = getKey(k);
        byte[] value = jedisUtil.get(key);
        jedisUtil.delete(key);
/*
        this.concurrentHashMap.remove(key);
*/
        if (value != null) {
            return (V) SerializationUtils.deserialize(value);
        }
        return null;
    }

    @Override
    public void clear() throws CacheException {
        // 此方法不需要重写
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public Set<K> keys() {
        return null;
    }

    @Override
    public Collection<V> values() {
        return null;
    }

    private byte[] getKey(K k) {
        if (k instanceof String) {
            return (CACHE_PREFIX + k).getBytes();
        }
        return SerializationUtils.serialize(k);
    }
}
