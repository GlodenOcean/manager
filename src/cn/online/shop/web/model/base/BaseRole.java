package cn.online.shop.web.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseRole<M extends BaseRole<M>> extends Model<M> implements IBean {

	public void setId(java.lang.String id) {
		set("id", id);
	}

	public java.lang.String getId() {
		return get("id");
	}

	public void setRoleName(java.lang.String roleName) {
		set("roleName", roleName);
	}

	public java.lang.String getRoleName() {
		return get("roleName");
	}

	public void setUpdateDateTime(java.lang.String updateDateTime) {
		set("updateDateTime", updateDateTime);
	}

	public java.lang.String getUpdateDateTime() {
		return get("updateDateTime");
	}

	public void setDescription(java.lang.String description) {
		set("description", description);
	}

	public java.lang.String getDescription() {
		return get("description");
	}
	
	public void setSource(java.lang.String source) {
		set("source", source);
	}

	public java.lang.String getSource() {
		return get("source");
	}

}
