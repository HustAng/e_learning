package com.ang.elearning.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ang.elearning.dao.DetailMapper;
import com.ang.elearning.po.Detail;
import com.ang.elearning.po.DetailExample;
import com.ang.elearning.po.DetailExample.Criteria;
import com.ang.elearning.service.IDetailService;

@Service("detailService")
public class DetailServiceImpl implements IDetailService {
	
	@Resource
	private DetailMapper detailDao;

	@Override
	public List<Detail> getALlDetail() {
		DetailExample example=new DetailExample();
		Criteria criteria = example.createCriteria();
		List<Detail> detailList = detailDao.selectByExample(example);
		return detailList;
	}

}
