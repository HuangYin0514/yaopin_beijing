package conf.mybatis.mapper;

import com.tcmkb.model.Users;
import com.tcmkb.model.UsersExample;
import com.tcmkb.model.UsersWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UsersMapper {
    long countByExample(UsersExample example);

    int deleteByExample(UsersExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UsersWithBLOBs record);

    int insertSelective(UsersWithBLOBs record);

    List<UsersWithBLOBs> selectByExampleWithBLOBs(UsersExample example);

    List<Users> selectByExample(UsersExample example);

    UsersWithBLOBs selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UsersWithBLOBs record, @Param("example") UsersExample example);

    int updateByExampleWithBLOBs(@Param("record") UsersWithBLOBs record, @Param("example") UsersExample example);

    int updateByExample(@Param("record") Users record, @Param("example") UsersExample example);

    int updateByPrimaryKeySelective(UsersWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(UsersWithBLOBs record);

    int updateByPrimaryKey(Users record);
}