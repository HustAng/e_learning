package com.ang.elearning.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ang.elearning.dao.TypeMapper;
import com.ang.elearning.po.Type;
import com.ang.elearning.po.TypeExample;
import com.ang.elearning.po.TypeExample.Criteria;
import com.ang.elearning.service.ITypeService;

@Service("typeService")
public class TypeServiceImpl implements ITypeService {
	
	@Resource
	private TypeMapper typeDao;
	
	@Override
	public List<Type> getAllType() {
		TypeExample example=new TypeExample();
		Criteria criteria=example.createCriteria();
		List<Type> list=typeDao.selectByExample(example);
		return list;
	}

	

}
