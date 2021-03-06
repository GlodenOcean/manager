<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="build/custom/js/cl-ajax.js"></script>
<div class="widget box">
	<div class="widget-header">
		<h4>
			<i class="fa fa fa-th-list"></i>渠道行业映射表
		</h4>
	</div>
	<div class="widget-content">
	<div class="row">
			<form id="channelBusinessMapForm" action="businessMap/${operation }" class="form-horizontal" target="ajax">
			
				<input type="hidden" id="operation" value="${operation }" />
				
				<div class="row">
					<div class="form-group">
						<label class="control-label col-md-2">渠道业务类型<span class="red">*</span></label>
						<div class="col-md-3">
							<input name="channelBusinessMap.ChannelBusiness" id="ChannelBusiness" class="form-control" type="text" value="${channelBusinessMap.ChannelBusiness }" maxlength="128" >
						</div>
						<label class="control-label col-md-2">服务的业务类型<span class="red">*</span></label>
						<div class="col-md-3">
							<select name="channelBusinessMap.MyBusiness" id="MyBusiness"
								class="form-control" onchange="channelBusinessChange()">
								<option value="">请选择</option>
								<c:forEach items="${sysBusinessList }" var="sysBusiness">
									<option value="${sysBusiness.Business }" ${channelBusinessMap.MyBusiness == sysBusiness.Business  ? 'selected' : '' }>${sysBusiness.Business}</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
				
			</form>
		</div>
	</div>
	<div class="widget-footer">
		<a href="javascript:;" class="btn" target="closeTab">关闭</a>&emsp;
		<button type="button" class="btn btn-success" onclick="channelFrom()">确定</button>
	</div>
</div>
<script>

function channelFrom(){
	$("#channelBusinessMapForm").submit();
}
</script>