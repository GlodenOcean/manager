package cn.online.shop.web.model;

import cn.es.common.ESSearchCondition;
import cn.es.utils.ESSQLHelper;
import cn.online.shop.web.model.base.BaseGoods;
import com.jfinal.plugin.activerecord.Page;

/**
 * Generated by JFinal.
 */
@SuppressWarnings("serial")
public class Goods extends BaseGoods<Goods> {
	public static final Goods dao = new Goods();
	/**
	 * 分页查询
	 * @param sc
	 * @return
	 */
	public Page<Goods> search(ESSearchCondition sc){
		int pageNumber = sc.page.getIndex();
		int pageSize = sc.page.getSize();

		ESSQLHelper sql = new ESSQLHelper(" from shop_goods WHERE 1 = 1");
		sql.equals("merchId", sc.getString("merchId"));
		sql.equals("status", 0);
		return super.paginate(pageNumber, pageSize, "select * ", sql.toString(),sql.getParams());
	}
}
