package com.bit.sts02.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.bit.sts02.model.entity.EmpVo;

public class EmpDaoImpl implements EmpDao{
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;

	@Override
	public List<EmpVo> selectAll() {
		return sqlMapClientTemplate.queryForList("emp.selectAll");
	}

	@Override
	public EmpVo selectOne(int empno) {
		return null;
	}

	@Override
	public void insertOne(EmpVo bean) {
		
	}

	@Override
	public int updateOne(EmpVo bean) {
		return 0;
	}

	@Override
	public int deleteOne(int empno) {
		return 0;
	}

}
