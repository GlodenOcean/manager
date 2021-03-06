package cn.online.shop.web.controller;


import com.jfinal.plugin.activerecord.Page;

import cn.es.common.ESController;
import cn.online.shop.web.model.Log;
import cn.online.shop.web.model.LogDetail;

/**
 * 日志控制器
 * @author ocean
 * by 2019年6月6日
 */
public class LogController extends ESController{

	public void search(){
		Page<Log> page = Log.dao.search(super.getSearchCondition());
		setPageResultToRequest("logList", page);
		render("log/logList.jsp");
	}
	
	public void delete(){
		Object[] ids = getPara("ids").split(",");
		Log.dao.batchDelete(ids);
		search();
	}
	
	public void searchDetail(){
		Page<LogDetail> page = LogDetail.dao.search(super.getSearchCondition());
		setPageResultToRequest("logDetailList", page);
		render("log/logDetailList.jsp");
	}
}
