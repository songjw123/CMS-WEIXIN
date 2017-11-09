package com.bootdo.wechat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.bootdo.wechat.dao.FansAppDao;
import com.bootdo.wechat.domain.FansAppDO;
import com.bootdo.wechat.service.FansAppService;



@Service
public class FansAppServiceImpl implements FansAppService {
	@Autowired
	private FansAppDao fansAppDao;
	
	@Override
	public FansAppDO get(Long id){
		return fansAppDao.get(id);
	}
	
	@Override
	public List<FansAppDO> list(Map<String, Object> map){
		return fansAppDao.list(map);
	}
	
	@Override
	public int count(Map<String, Object> map){
		return fansAppDao.count(map);
	}
	
	@Override
	public int save(FansAppDO fansApp){
		return fansAppDao.save(fansApp);
	}
	
	@Override
	public int update(FansAppDO fansApp){
		return fansAppDao.update(fansApp);
	}
	
	@Override
	public int remove(Long id){
		return fansAppDao.remove(id);
	}
	
	@Override
	public int batchRemove(Long[] ids){
		return fansAppDao.batchRemove(ids);
	}
	
}
