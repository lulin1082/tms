package cn.tedu.ttms.common;

import org.junit.After;
import org.junit.Before;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class BaseTest {
	public ClassPathXmlApplicationContext ctx;
	@Before
	public void init(){
		 ctx=new ClassPathXmlApplicationContext(
    				 "spring--shiro.xml",
		  "spring--mvc.xml");
	}
	/*
			"spring-pool.xml",
			"spring-mybatis.xml",
			"mybatis-config.xml","spring-redis.xml",
			"spring--shiro.xml"*/

	//销毁context(也可以先不写)
	@After
	public void destory(){
	//	ctx.close();
	}
}


