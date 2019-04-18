package cn.tedu.ttms.common.util;

import cn.tedu.ttms.common.BaseTest;
import org.junit.Assert;
import org.junit.Test;

/**
 * @Author: lulin
 * @Date: 4/1/2019 11:12 PM
 * @Version 1.0
 */
public class JedisUtilTest extends BaseTest {
    @Test
    public void setJedisPool() throws Exception {

    }

    @Test
    public void set() throws Exception {
        JedisUtil jedisUtil=ctx.getBean(JedisUtil.class);
        byte[] value = "value".getBytes();
        byte[] key="key".getBytes();
        jedisUtil.set(key,value);
        jedisUtil.expire(key,1000);
        byte[] value2;
        value2 = jedisUtil.get(key);
        Assert.assertArrayEquals(value,value2);
    }

    @Test
    public void expire() throws Exception {
    }

    @Test
    public void get() throws Exception {
    }

    @Test
    public void delte() throws Exception {
    }

    @Test
    public void keys() throws Exception {
    }

}