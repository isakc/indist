package org.mhd.indiest.listener;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ProfileCopyListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("서버꺼짐");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		ServletContext context = arg0.getServletContext();
		
		String path = context.getRealPath("/profile");
		
		File backup = new File("c:/MHD/workspace/project_web/indist/backup");
		
		File[] files = backup.listFiles();
		
		for(File file2 : files){

			FileInputStream fis=null;
			FileOutputStream fos=null;
			
			byte[] data = new byte[4096];
			
			int size = -1;
			
			try {
				fis = new FileInputStream(file2);
				fos = new FileOutputStream(path+File.separator+file2.getName());
				while((size=fis.read(data))!=-1){
					fos.write(data, 0, size);
				}//while end
			}catch (IOException e) {
				e.printStackTrace();
			}finally{
				try {
					if(fis!=null){fis.close();}
					if(fos!=null){fos.close();}
				} catch (IOException e) {
					e.printStackTrace();
				}//try~ catch end
			}//try~ catch finally end
			
		}//for end
	}
	//web.xml에 설정해주기
}
