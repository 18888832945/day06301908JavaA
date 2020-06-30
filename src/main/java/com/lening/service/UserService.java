package com.lening.service;

import com.lening.entity.*;

import java.util.Date;
import java.util.List;

/**
 * 创作时间：2020/4/7 10:49
 * 作者：李增强
 */
public interface UserService {
    List<UserBean> findAll();

    List<PowerBean> getPowerList();

    UserBean getUserById(Integer id);

    List<DeptBean> getDeptList();

    List<RoleBean> getRoleListByDeptid(UserBean userBean);

    List<RoleBean> getRoleListByDeptid2(Integer deptid);

    void saveUserDeptRole(Integer id, Integer deptid, Integer rid);

    UserBean getLogin(UserBean userBean);

    List<PowerBean> getPowerListById(Integer id);

    QueryVo jieXiStr1(String str1);

    String jieXiStr2(String str2);

    String getInfo(QueryVo vo);

    String saveData(QueryVo vo, String str2);

    void saveStuQj(Integer id, Double qjtime, Date stime, Date etime,String qjcause);

    void saveStuQj2(ProcessBean pb);

    List<QjVo> getStuQjListBySid(Integer id);

    List<QjVo> getQjshListByUserid(Integer id);

    void saveWdsh(Integer pid, Integer shstatus,Integer userid);
}
