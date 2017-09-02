package com.tcmkb.utils;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 * 框架工具类，根据数据库中表结构，生成相应的service,dao,controller,mybatis mapper 文件
 * 
 * @author wangwd(wangwd@guoyatech.com)
 * @version $Revision:$, $Date: 2017年7月18日 下午3:58:01$
 * @LastChanged $Author:$, $Date::                    #$
 */
public class BuildFileUtil {
  public static void BuildFiles(String dbUserName,String pass){
    try {
      List<String> list=new ArrayList<String>();
//    connection to DB
      Class.forName("com.mysql.jdbc.Driver");
      
      Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tcmkb?relaxAutoCommit=true&zeroDateTimeBehavior=convertToNull", dbUserName, pass);
      Statement stmt=conn.createStatement();
      ResultSet rs=stmt.executeQuery("select * from information_schema.tables where table_schema='tcmkb'");
      if(rs!=null){
        while(rs.next()){
          String tbName=rs.getString("table_name");
          list.add(StringUitl.camelStyle(false,tbName));
        }
      }
      
      File daoImplDir=new File("C:/Users/wangwd/Desktop/tcmkbBuildDir/controller");
      daoImplDir.mkdirs();

      //Controller beans
      for(String str:list){
              
        File f1=new File("C:/Users/wangwd/Desktop/tcmkbBuildDir/controller/"+str.substring(0,1).toUpperCase()+str.substring(1)+"Controller.java");
        try {
          FileWriter fw=new FileWriter(f1,true);
          fw.write("package com.tcmkb.controller;\n\n");
          fw.write("import javax.servlet.http.HttpServletRequest;\n");
          fw.write("import javax.servlet.http.HttpServletResponse;\n");
          fw.write("import org.springframework.web.servlet.ModelAndView;\n");
          fw.write("import org.springframework.web.servlet.mvc.multiaction.MultiActionController;\n");
          fw.write("import com.tcmkb.service."+str.substring(0,1).toUpperCase()+str.substring(1)+"Service;\n");
          fw.write("public class "+str.substring(0,1).toUpperCase()+str.substring(1)+"Controller extends MultiActionController {\n\n}");
          fw.flush();
          fw.close();
        } catch (IOException e) {
          e.printStackTrace();
        }
        
      }
      System.out.println("\n\n");
      stmt.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } catch (ClassNotFoundException e) {
      e.printStackTrace();
    }finally {
      
    }
  }
  
  public static void main(String[] args) {
    BuildFiles("root", "cyberaudit");
  }
  
  
}
