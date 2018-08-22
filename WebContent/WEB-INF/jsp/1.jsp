<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
<link href="style/authority/basic_layout.css" rel="stylesheet"
	type="text/css">
<link href="style/authority/common_style.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="scripts/authority/commonAll.js"></script>
<script type="text/javascript"
	src="scripts/fancybox/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript"
	src="scripts/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css"
	href="style/authority/jquery.fancybox-1.3.4.css" media="screen"></link>
<script type="text/javascript"
	src="scripts/artDialog/artDialog.js?skin=default"></script>
<title>信息管理系统</title>
<script type="text/javascript">
	
</script>
<style>
.alt td {
	background: black !important;
}
</style>
</head>
<body>
	<form id="submitForm" name="submitForm" action="" method="post">
		<input type="hidden" name="allIDCheck" value="" id="allIDCheck" /> <input
			type="hidden" name="fangyuanEntity.fyXqName" value="" id="fyXqName" />
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
				
					<div id="box_border">
						<div id="box_top">搜索</div>
						<div id="box_center">
						<form method="get" 
				      action="${pageContext.request.contextPath }/customer/list.action">
					<div class="box_bottom">
						<label for="customerName">商品名称</label> 
						<input type="text" class="ui_input_txt02" id="Cname" 
						                   value="${Cname }" name="Cname" />
						 <button type="submit" class="btn btn-primary" class="ui_input_btn01"
								onclick="search();">查询</button>
					</div>
						</form>
						</div>
						<div id="box_bottom">
								 <input type="button" value="新增"
								class="ui_input_btn01" id="addBtn" />
								 <input type="button"
								value="删除" class="ui_input_btn01" onclick="batchDel();" />
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%"
						align="center" border="0">
						<thead>
						<tr>
							<th width="30"><input type="checkbox" id="all"
								onclick="selectOrClearAllCheckbox(this);" /></th>
							<th>编号</th>
							<th>名称</th>
							<th>介绍</th>
							<th>操作</th>
						</tr>
						</thead>
							<c:forEach items="${page.rows}" var="row">
						<tr>
								<td><input type="checkbox" name="IDCheck"
									value="14458579642011" class="acb" /></td>
								<td>${row.id}</td>
								<td>${row.Cname}</td>
								<td>${row.CDescr}</td>
								<td><a href="house_edit.jsp?id=${row.id}"
									class="edit">编辑</a></td>
								<script type="text/javascript">
			function del(id){
				
				if(confirm("你确定要删除吗")){
					alert("你真的敢删除我吗");
					window.location.href="admindelete.do?id="+id;
				}else{
					alert("就知道你不敢删我");  
				}
			}
			
		</script>					
									<td><a href="javascript" onclick="del(${admin.id})">删除</a>
								</td>
						</tr>
							</c:forEach>
					</table>
				</div>
				<div class="ui_tb_h30">
					<div class="ui_flt" style="height: 30px; line-height: 30px;">
						共有 <span class="ui_txt_bold04">90</span> 条记录，当前第 <span
							class="ui_txt_bold04">1 / 9</span> 页
					</div>
					<div class="ui_frt">
						<!--    如果是第一页，则只显示下一页、尾页 -->

						<input type="button" value="首页" class="ui_input_btn01" /> <input
							type="button" value="上一页" class="ui_input_btn01" /> <input
							type="button" value="下一页" class="ui_input_btn01"
							onclick="jumpNormalPage(2);" /> <input type="button" value="尾页"
							class="ui_input_btn01" onclick="jumpNormalPage(9);" />



						<!--     如果是最后一页，则只显示首页、上一页 -->

						转到第<input type="text" id="jumpNumTxt" class="ui_input_txt01" />页
						<input type="button" class="ui_input_btn01" value="跳转"
							onclick="jumpInputPage(9);" />
					</div>
				</div>
			</div>
		</div>
	</form>

</body>
</html>
