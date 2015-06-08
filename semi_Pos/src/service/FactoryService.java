package service;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class FactoryService {
	private static SqlSessionFactory factory;

	static {
		try {
			// 1.myBatis의 핵심 설정을 IO로 읽어 드림
			Reader reader = Resources.getResourceAsReader("config/config.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("여기서 에러가 뜨냐 ?===========================================");
		}
	}

	public static SqlSessionFactory getFactory() {
		return factory;
	}

}
