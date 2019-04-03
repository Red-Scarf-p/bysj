package ck.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import ck.bean.CaseClass;

public interface CaseClassDao {
	//查询所有分类
	List<CaseClass> findAllCaseClass();
	//查询所有分类和案例
	List<CaseClass> findAllCaseAndClass();
	//查询分类
	CaseClass findCaseClassById(int ccid);
	//添加
	int addCaseClass(CaseClass caseClass);
	//修改
	int updCaseClass(CaseClass caseClass);
	//删除
	int delCaseClass(@Param("ccid") int ccid);
	//批量删除
	int delAllCaseClass(List ccid);
	//驗證是否重名
	CaseClass findCaseClassByName(String ccclass);
}
