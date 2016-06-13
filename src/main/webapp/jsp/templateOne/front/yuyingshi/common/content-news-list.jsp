<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<LINK href="/commons/yuyingshi/css/educss.pGgnPYlLI01i.21.css" rel="stylesheet" type="text/css">
<LINK href="/commons/yuyingshi/css/edu.qeqMopjuDoMa.14.css" rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="/commons/easyui/easyui.css" />
<link type="text/css" rel="stylesheet" href="/commons/easyui/icon.css" />
<script type="text/javascript" src="/commons/js/jquery/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/commons/easyui/jquery.easyui.min.js"></script>

<script>

$(function(){
	$('#pp').pagination(
	{
		total:parseInt("${objGPagination.total}"),
		pageSize:parseInt("${objGPagination.pageSize}"),
		pageNumber:parseInt("${objGPagination.pageNo}"),
		pageList:[10,15,20,30,50,100],
		loading:false,
		showPageList:true,
		showRefresh:false,
		beforePageText:'第',
		afterPageText:'页，共{pages}页',
		displayMsg:'{from}-{to}/{total}',
		onSelectPage:function(pageNumber,pageSize)
		{
			location.href="/front/yuyingshi/newsList.do?rows=" + pageSize + "&page=" + pageNumber + "&menuID=${menuID}&lProjectMenuID=${objSubProjectMenu.objParentProjectMenu.lId}"
		}
	});
});	
</script>
<DIV class="lanren box-top">
	<DIV class="search lanren">
		<DIV class="">
			当前位置：
			<A href="/front/yuyingshi/index.do?lProjectMenuID=${objProjectMenu.lId}" rel="nofollow">首页</A>
			&nbsp;>
			<A href="/front/yuyingshi/newsList.do?lProjectMenuID=${objProjectMenu.lId}&menuID=${objSubProjectMenu.lId}" rel="nofollow">${objSubProjectMenu.strMenuName}</A>
			&nbsp;>
			列表
		</DIV>
	</DIV>
	
	<DIV class="pleft">
		<DIV class="listbox">
			<UL class="e2">
			
				<s:if test="objGPagination != null && objGPagination.rows.size > 0">
                    <s:iterator value="objGPagination.rows" id="news" status="mystatus">
					<LI>
						<OL >
							<DIV class="panel" >
								<!-- 热点新闻 -->
								<DIV class="edu_news_list">
									<DIV class="news_list_container  clearfix" style="border:1px solid #fd8764;" >
										<DIV class="news_one havepic " >
											<DIV class="news_main_info" style="width:390px;">
												<H2>
													<A style="color:#ff6d93;font-family: 微软雅黑, 黑体, 宋体;font-size:18px;" href="/front/yuyingshi/detail.do?lProjectMenuID=${objProjectMenu.objParentProjectMenu.lId }&newsID=<s:property value='lId'/>" target="_blank">
														<s:property value="strLongTitle"/>
													</A>
												</H2>
												<P>
													${strSummary}
												</P>
												<DIV class="news_sub_info">
													<DIV class="join_keys">
														<A href="/front/yuyingshi/detail.do?lProjectMenuID=${objProjectMenu.objParentProjectMenu.lId }&newsID=<s:property value='lId'/>">阅读</A>
													</DIV>
													<DIV class="news_tie">
														<span style="float:left;"><span style="color:red;font-size:15px;">${readNum}</span>&nbsp;阅读&nbsp;&nbsp;</span>
														<!-- <A class="join_num" href="javascript:void(0);">评论</A> -->
													</DIV>
													<DIV class="share-join-tab">
														<!-- 评论 -->
													</DIV>
												</DIV>
											</DIV>
										</DIV>
									</DIV>
								</DIV>
							</DIV>
						</OL>
						<!-- 底部标题 暂不使用。
						<OL class="newyear">
							<A class="title"
								href=""
								target="_blank">flash+xml全屏立体式图片相册效果</A>
							<SPAN class="info">[02-11] </SPAN>
						</OL>
						 -->
					</LI>
				</s:iterator>
				</s:if>
			</UL>
		</DIV>
		<div id="pp" style="width: 99%; background: #efefef; border: 1px solid #ccc;float:left;"></div>
	</DIV>
	
	<DIV class="list-js">
		<DIV class="top">
			<SPAN class="l">标签墙</SPAN>
			<SPAN class="r">
				<!-- 
				<A href="http://www.lanrenzhijia.com/js/" target="_blank"><IMG
						width="26" height="26" alt="育婴之家"
						src="/commons/yuyingshi/images/more.png">
			</A>
				 -->
		   </SPAN>
		</DIV>
		<!-- 详细页右侧导航begin -->
		<DIV class="nav-sub">
			<s:iterator value="lstProjectMenu" id="projectMenu" >
				<A href="/front/yuyingshi/newsList.do?lProjectMenuID=${objProjectMenu.lId}&menuID=${lId}" <s:if test="lId==objSubProjectMenu.lId">class='thisclass'</s:if>><s:property value="strMenuName"/></A>
			</s:iterator>
		</DIV>
		<!-- 详细页右侧导航end -->
		
		<DIV class="ads_right">
			<DIV class="top">
				<SPAN class="l">最近更新</SPAN><SPAN class="r"><A
					href="/front/yuyingshi/newsListByTag.do?lProjectMenuID=${objProjectMenu.lId}&newsTag=1"><IMG
							width="26" height="26" alt="育婴之家"
							src="/commons/yuyingshi/images/more.png">
				</A> </SPAN>
			</DIV>
			<UL class="box" id="all2">
				<s:iterator value="lstNewestMessage" id="news">
					<LI>
						<A href="/front/yuyingshi/detail.do?lProjectMenuID=${objProjectMenu.objParentProjectMenu.lId }&newsID=<s:property value='lId'/>"><s:property value="strLongTitle"/></A><EM></EM>
					</LI>
				</s:iterator>
			</UL>
		</DIV>
		
		<DIV class="hot">
			<DL>
				<DT>
					推荐阅读
				</DT>
				<s:iterator value="lstSuggestReading" id="news" status="myStatus">
					<s:if test="#myStatus.index < 20">
						<DD>
							<A href="/front/yuyingshi/detail.do?lProjectMenuID=${objProjectMenu.objParentProjectMenu.lId }&newsID=<s:property value='lId'/>"
								target="_blank"><s:property value="strLongTitle"/></A>
						</DD>
					</s:if>
				</s:iterator>
			</DL>
		</DIV>
	</DIV>
</DIV>