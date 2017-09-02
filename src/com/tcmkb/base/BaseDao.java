package com.tcmkb.base;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
/**
 * 增删改查的基类，所有Dao的实现类可以继承。
 * 
 * @author miweidong
 * @version $Revision:$, $Date: 2017年7月13日 下午4:09:31$
 * @LastChanged $Author:$, $Date::                    #$
 */
public class BaseDao {
    private SqlSessionTemplate sqlSession;
    /**
     * 查询数据条数
     * @param statement mybatis mapper的id
     * @param params 查询参数
     * @return 返回数据条数
     */
    public Integer queryCount(String statement,Map<String,Object> params){
      Integer result=getSqlSession().selectOne(statement, params);
      return result;
    }
    
    /**
     * 分页查询数据。<font style="font-weight:bold;color:red">注意：该方法会在params中放入，start、limit两个参数作为分页条件</font>
     * @param totalStatement 查询数据总条数的statement
     * @param statement 查询指定页面数据的statement
     * @param page 要查询的页码
     * @param pageSize 要查询的数据条数
     * @param params 查询参数
     * @return 查询到的数据集
     */
     
    public List query4Page(String totalStatement,String statement,Integer page,Integer pageSize,Map<String,Object> params){
      //计算满足条件的记录总数，以及页面总数
      params=params==null?new HashMap<String,Object>():params;
      Map<String,Integer> map=sqlSession.selectOne(totalStatement, params);
      Integer total=(int) map.values().toArray()[0];
      //查询指定页的数据
      int totalPage=total%pageSize==0?total/pageSize:(total/pageSize)+1;
      page=(page==null||page<0||page>totalPage)?1:page;
      pageSize=(pageSize==null||pageSize<0)?20:pageSize;
      params.put("start", (page-1)*pageSize);
      params.put("limit", page*pageSize);
      return sqlSession.selectList(statement, params);
    }
    /**
     * 条件查询
     * @param statement mybatis中mapper的id
     * @param params 查询参数
     * @return 查询到的数据集
     */
    public List query(String statement,Map<String,Object> params){
      return getSqlSession().selectList(statement, params);
    }
    
    /**
     * 查询单条数据
     * @param statment mybatis mapper的id
     * @param params 查询参数
     * @return 满足条件的数据
     */
    public Object  queryOne(String statment,Map<String,Object> params){
      return getSqlSession().selectOne(statment, params);
    }
    
    /**
     * 新增
     * @param statement mybatis mapper 的id
     * @param rows 要插入数据库中的记录
     */
    public void insert(String statement,List rows){
      getSqlSession().insert(statement, rows);
    }
    /**
     * 删除
     * @param statement mybatis mapper 的 id
     * @param rows 要删除的数据
     */
    public void delete(String statement,List rows){
      getSqlSession().delete(statement, rows);
    }
    /**
     * 修改
     * @param statement mybatis mapper 的 id
     * @param rows 要修改的数据
     */
    public void update(String statement,List rows){
      getSqlSession().update(statement, rows);
    }
    
    public List queryWithNoParam(String statement){
      return getSqlSession().selectList(statement);
    }
    
    //--------------------getters and setters---------------------
    public SqlSessionTemplate getSqlSession() {
      return sqlSession;
    }

    public void setSqlSession(SqlSessionTemplate sqlSession) {
      this.sqlSession = sqlSession;
    }


}
