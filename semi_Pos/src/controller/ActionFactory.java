package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import javax.servlet.http.HttpServletRequest;
import action.Action;
//�̱���� ������Ʈ ���丮
public class ActionFactory {
	private static ActionFactory factory;
	private Properties prop;
	public static synchronized ActionFactory getFactory(){
		if(factory == null) factory = new ActionFactory();
		return factory;
	}
	public ActionFactory() {	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
		prop = new Properties();
	}
	public Action getAction(String cmd){
		Action action = null;
		try {
			prop.load(new FileInputStream("C:\\kosta97\\semi\\semi_Pos\\src\\controller\\classinfo.properties"));
			System.out.println("key :"+prop.getProperty("index"));
			String rPath = prop.getProperty(cmd);
			System.out.println("kk:"+rPath);
			if(rPath == null){
				cmd = "login";
				rPath = prop.getProperty(cmd);
			}
			Class<Action> handlerClass = 
					(Class<Action>) Class.forName(rPath);
			action =handlerClass.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}

//		if(cmd.equals("index")){
//			action = new IndexAction();
//		}else if(cmd.equals("today")){
//			action = new TodayAction();
//		}
		return action;
	}
}
