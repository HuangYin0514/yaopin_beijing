package conf.mybatis.mapper;

import com.tcmkb.model.UsersLogLogin;
import com.tcmkb.model.UsersLogLoginExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UsersLogLoginMapper {
    long countByExample(UsersLogLoginExample example);

    int deleteByExample(UsersLogLoginExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UsersLogLogin record);

    int insertSelective(UsersLogLogin record);

    List<UsersLogLogin> selectByExample(UsersLogLoginExample example);

    UsersLogLogin selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UsersLogLogin record, @Param("example") UsersLogLoginExample example);

    int updateByExample(@Param("record") UsersLogLogin record, @Param("example") UsersLogLoginExample example);

    int updateByPrimaryKeySelective(UsersLogLogin record);

    int updateByPrimaryKey(UsersLogLogin record);
}