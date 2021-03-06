<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

		<div class="widget box">
		
			<div class="widget-header">
					<h4>
						<i class="fa fa-th-list"></i>近期交易明细列表
					</h4>
				</div>
		
                <div class="widget-content  no-padding">
	                	<div class="dataTables_header clearfix">
	                		<form class="searchForm" action="trans/search" method="post" class="form-inline" target="tab">
	                			 <input type="hidden" name="tabId" value="${tabId }" />
								<table>
									 <tr>
										<td class="col-md-1">订单号</td>
										<td class="col-md-3"><input class="form-control" type="text" name="OrderNo" value="${OrderNo }"></td>
										<td class="col-md-1">商户号</td>
										<td class="col-md-3"><input class="form-control" type="text" name="Mid" value="${Mid }"></td>
										<td class="col-md-1">卡号</td>
										<td class="col-md-3"><input class="form-control" type="text" name="CardNo" value="${CardNo }"></td>
										<td>
											<button type="submit" class="btn green-haze">
													<i class="fa fa-search"></i>&nbsp;查询
											</button> 
										</td>
									 </tr>
									 <tr>
									 	<td class="col-md-1">终端号</td>
										<td class="col-md-3"><input class="form-control" type="text" name="Tid" value="${Tid }"></td>
										<td class="col-md-1">交易起始日期</td>
										<td class="col-md-3"><input class="form-control date-picker" name="startDate" type="text" value="${startDate }" readonly="readonly"></td>
										<td class="col-md-1">交易截至日期</td>
										<td class="col-md-3"><input class="form-control date-picker" name="endDate" type="text" value="${endDate }" readonly="readonly"></td>
										<td></td>
									</tr>
									 <tr>
									 	<td class="col-md-1">银联返回码</td>
										<td class="col-md-3">
											<input class="form-control" name="ChRsp" type="text" value="${ChRsp }">
										</td>
										<td class="col-md-1">结束符</td>
										<td class="col-md-3">
											<select class="form-control" name="TransEnd">
												<option value="ALL" ${TransEnd == 'ALL' ? 'selected' : '' }>所有</option>
												<option value="1" ${TransEnd == '1' ? 'selected' : '' }>处理完成</option>
												<option value="ING" ${TransEnd == 'ING' ? 'selected' : '' }>处理中</option>
											</select>
										</td>
										<td class="col-md-1">API机构号</td>
										<td class="col-md-3"><input class="form-control" type="text" name="TermInstNo" value="${TermInstNo }"></td>
									</tr>
									<tr>
										<td class="col-md-1">交易名称</td>
										<td class="col-md-3">
											<select name="TransName" class="form-control">
												<option value="所有" ${TransName == '所有' ? 'selected' : '' }>所有</option>
												<option value="终端签到-POS接入" ${TransName == '终端签到-POS接入' ? 'selected' : '' }>终端签到-POS接入</option>
												<option value="消费" ${TransName == '消费' ? 'selected' : ''  }>消费</option>
												<option value="打印确认上送" ${TransName == '打印确认上送' ? 'selected' : ''  }>打印确认上送</option>
												<option value="消费撤销" ${TransName == '消费撤销' ? 'selected' : ''  }>消费撤销</option>
												<option value="消费冲正" ${TransName == '消费冲正' ? 'selected' : ''  }>消费冲正</option>
												<option value="余额查询" ${TransName == '余额查询' ? 'selected' : ''  }>余额查询</option>
												<option value="POS状态上送" ${TransName == 'POS状态上送' ? 'selected' : ''  }>POS状态上送</option>
												<option value="微信无卡订单生成" ${TransName == '微信无卡订单生成' ? 'selected' : ''  }>微信无卡订单生成</option>
												<option value="支付宝无卡订单生成" ${TransName == '支付宝无卡订单生成' ? 'selected' : ''  }>支付宝无卡订单生成</option>
												<option value="支付宝无卡扫码支付" ${TransName == '支付宝无卡扫码支付' ? 'selected' : ''  }>支付宝无卡扫码支付</option>
												<option value="微信无卡扫码支付" ${TransName == '微信无卡扫码支付' ? 'selected' : ''  }>微信无卡扫码支付</option>
												<option value="微信无卡订单查询" ${TransName == '微信无卡订单查询' ? 'selected' : ''  }>微信无卡订单查询</option>
												<option value="支付宝无卡订单查询" ${TransName == '支付宝无卡订单查询' ? 'selected' : ''  }>支付宝无卡订单查询</option>
												<option value="消费撤销冲正" ${TransName == '消费撤销冲正' ? 'selected' : ''  }>消费撤销冲正</option>
												<option value="联机下载终端主密钥" ${TransName == '联机下载终端主密钥' ? 'selected' : ''  }>联机下载终端主密钥</option>
												<option value="T0交易通知" ${TransName == 'T0交易通知' ? 'selected' : ''  }>T0交易通知</option>
												<option value="前端无卡回调通知" ${TransName == '前端无卡回调通知' ? 'selected' : ''  }>前端无卡回调通知</option>
											</select>
										</td>
										<td class="col-md-1">渠道号</td>
										<td class="col-md-3"><input class="form-control" type="text" name="ChInstNo" value="${ChInstNo }"></td>
										<td class="col-md-1">系统参考号</td>
										<td class="col-md-3"><input class="form-control" type="text" name="ChRefNo" value="${ChRefNo }"></td>
									</tr>
									<tr>
										<td class="col-md-1">
											终端返回码
										</td>
										<td class="col-md-3"><input class="form-control" type="text" name="InterErrCode" value="${InterErrCode }"></td>
										<td class="col-md-1">
											上级商户号
										</td>
										<td class="col-md-3"><input class="form-control" type="text" name="ChMid" value="${ChMid }"></td>
										<td class="col-md-1">
											上级终端号
										</td>
										<td class="col-md-3"><input class="form-control" type="text" name="ChTid" value="${ChTid }"></td>
									</tr>
									<tr>
										<td class="col-md-1">交易笔数</td>
										<td class="col-md-3">
											<span class="red">${countSuccessTrans }笔</span>
										</td>
											<td class="col-md-1">交易金额</td>
										<td class="col-md-3">
											<span class="red">￥${sumSuccessMoney }</span>
										</td>
									</tr>
								</table>
							</form>
	                	</div>
                	
                	<table class="table table-hover table-checkable table-striped table-bordered table-highlight-head">
	                    <thead>
							<tr>
								<th style="width:45px">序号</th>
								<th>订单号</th>
								<th>交易名</th>
								<th style="width:120px">商户号</th>
								<th>卡号</th>
								<th>交易金额</th>
								<th>交易时间</th>
								<th>终端号</th>
								<th class="text-center">返回码</th>
								<th class="text-center">T0标志</th>
								<th class="text-center">操作</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${transList }" var="item" varStatus="status">
							<tr>
								<td>${status.index+(page.index-1)*page.size+1}</td>
								<td>${item.OrderNo}</td>
								<td>${item.TransName}</td>
								<td>${item.Mid}</td>
								<td>${item.CardNo}</td>
								<td>${item.Amount}</td>
								<td>${fn:substring(item.TransDateTime, 0, 19)}</td>
								<td>${item.Tid}</td>
								<td class="text-center">
									${item.InterErrCode}
								</td>
								<td class="text-center">
									<c:choose>
											<c:when test="${fn:startsWith(item.T0Status, '001')}">
												是
											</c:when>
											<c:when test="${fn:startsWith(item.T0Status, '002')}">
												是
											</c:when>
											<c:when test="${fn:startsWith(item.T0Status, '003')}">
												是
											</c:when>
											<c:otherwise>
												非
											</c:otherwise>
										</c:choose>
								</td>
								<td class="text-center">
									<a href="trans/viewDetails?id=${item.TRANS_UUID }&transEnd=${item.TransEnd }&type=now" class="today_details" target="dialog" width="1000">
										明细
									</a>  
									&emsp;
									<a href="trans/flow?id=${item.TRANS_UUID }&flowName=process0" target="_blank" class="today_flow">
										流程图
									</a> 
								</td>
							</tr>
						</c:forEach>
						<c:if test="${empty transList }">
							<tr class="odd gradeX">
								<td colspan="10" class="empty-list">暂无相关结果.</td>
							</tr>
						</c:if>
					</tbody>
                  </table>
                </div>
		</div>
		 <%@ include file="/include/pagination.jsp" %>
