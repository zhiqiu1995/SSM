<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SCT-后台系统</title>
<link href="style/authority/login_css.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
<script>
	// 判断是登录账号和密码是否为空
	function check() {
		var username = $("#username").val();
		var password = $("#password").val();
		if (usercode == "" || password == "") {
			$("#message").text("账号或密码不能为空！");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div id="login_center">
		<div id="login_area">
			<div id="login_box">
				<div id="login_form">
					<form id="submitForm"
						action="${pageContext.request.contextPath }/login.action"
						method="post" onsubmit="return check()">
						<div id="login_tip">
							<span id="login_err" class="sty_txt2"></span>
						</div>
						<font color="red"> <%-- 提示信息--%> <span id="message">${msg}</span>
						</font>
						<div>
							用户名：<input type="text" name="username" class="username" id="name">
						</div>
						<div>
							密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password"
								class="pwd" id="pwd" onkeypress="EnterPress(event)"
								onkeydown="EnterPress()">
						</div>
						<div id="btn_area">
							<input type="submit" class="login_btn" id="login_sub"
								value="登  录"> <input type="reset" class="login_btn"
								id="login_ret" value="重 置">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>