<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=path%>/login/login.css">
        <title>登录-三级联动</title>
        <script src="<%=basePath%>statics/JQuery/jquery.min.js"></script>
    </head>
    <body>
        <div class="top"></div>
        <div class="bottom"></div>
        <form method="post" action="<%=basePath%>login/dl.do" id="roleErpForm">
        <div class="login">
            <ul>
                <li>
                    <span>用户名：</span>
                    <input type="text" placeholder="  请输入您的用户名" value="130000" id='loginNm' name='loginNm'>
                </li>
                <li>
                    <span>密 &nbsp;&nbsp; 码：</span>
                    <input type="password" value="123456" id='loginPwd' name='loginPwd'>
                    <span style="color: red;" >${error}</span>
                </li>
                <%-- <li>
                    <span style="color: red;" >${error}</span>
                </li> --%>
                <li>
                    <button id="btn_submit" type="submit">登 &nbsp;&nbsp; 录</button>
                </li>
            </ul>
            <div class="copyright">
                <p>技术支持：北京圣世信通科技发展有限公司</p>
            </div>
        </div>
        </form>
    </body>
</html>