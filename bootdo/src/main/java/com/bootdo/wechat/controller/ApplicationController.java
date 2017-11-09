package com.bootdo.wechat.controller;

import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bootdo.wechat.domain.ApplicationDO;
import com.bootdo.wechat.service.ApplicationService;
import com.bootdo.common.utils.PageUtils;
import com.bootdo.common.utils.Query;
import com.bootdo.common.utils.R;

/**
 * 微信公众号
 * 
 * @author song
 * @email 1992lcg@163.com
 * @date 2017-11-08 18:55:24
 */
 
@Controller
@RequestMapping("/wechat/app")
public class ApplicationController {
	@Autowired
	private ApplicationService applicationService;
	
	@GetMapping()
	@RequiresPermissions("wechat:app:app")
	String Application(){
	    return "wechat/application/application";
	}
	
	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("wechat:app:app")
	public PageUtils list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);
		List<ApplicationDO> applicationList = applicationService.list(query);
		int total = applicationService.count(query);
		PageUtils pageUtils = new PageUtils(applicationList, total);
		return pageUtils;
	}
	
	@GetMapping("/add")
	@RequiresPermissions("wechat:app:add")
	String add(){
	    return "wechat/application/add";
	}

	@GetMapping("/edit/{id}")
	@RequiresPermissions("wechat:app:edit")
	String edit(@PathVariable("id") Long id,Model model){
		ApplicationDO application = applicationService.get(id);
		model.addAttribute("app", application);
	    return "wechat/application/edit";
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@PostMapping("/save")
	@RequiresPermissions("wechat:app:add")
	public R save( ApplicationDO application){
		if(applicationService.save(application)>0){
			return R.ok();
		}
		return R.error();
	}
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("wechat:app:edit")
	public R update( ApplicationDO application){
		applicationService.update(application);
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/remove")
	@ResponseBody
	@RequiresPermissions("wechat:app:remove")
	public R remove( Long id){
		if(applicationService.remove(id)>0){
		return R.ok();
		}
		return R.error();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/batchRemove")
	@ResponseBody
	@RequiresPermissions("wechat:app:batchRemove")
	public R remove(@RequestParam("ids[]") Long[] ids){
		applicationService.batchRemove(ids);
		return R.ok();
	}
	
}
