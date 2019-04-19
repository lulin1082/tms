<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<div class="container">
	<!-- 页面导航 -->
	<div class="page-header">
		<div class="page-title" style="padding-bottom: 5px">
			<h3>旅游管理系统</h3>
			<ol class="breadcrumb">
				<li>系统管理</li>
				<li>用户管理</li>
				<li class="active">添加用户</li>
			</ol>
		</div>
	</div>
	<div class="panel panel-default" >
		<div class="panel-heading" id="editTitle"></div>
			<form class="form-horizontal" id="editUserForm">
				<div class="form-group">
					<div class="col-sm-2 control-label"><span  style="color:red">*</span>用户名：</div>
					<div class="col-sm-10">
						<input type="text" name="userName" id="userName" placeholder="登录账号" class="form-control dynamicClear required">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label"><span  style="color:red">*</span>密码：</div>
					<div class="col-sm-10">
						<input type="password" name="userPwd" id="userPwd" placeholder="密码" class="form-control dynamicClear required">
					</div>
				</div>
				<div class="form-group" >
					<div class="col-sm-2 control-label"><span  style="color:red">*</span>新密码：</div>
					<div class="col-sm-10">
						<input type="password" name="userPwd" id="newPwd" placeholder="密码" class="form-control dynamicClear required">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-2 control-label">邮箱：</div>
					<div class="col-sm-10">
						<input type="text" id="email" placeholder="邮箱" class="form-control dynamicClear">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-2 control-label"><span  style="color:red">*</span>手机号：</div>
					<div class="col-sm-10">
						<input type="text" name="mobile" id="mobile" placeholder="手机号" class="form-control dynamicClear required">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-2 control-label">角色：</div>
					<div class="col-sm-10">
						<label id="roleList" class="checkbox-inline"></label>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-2 control-label"></div>
					<input type="button" value="提交" class="btn btn-primary" id="btn_ok">
					&nbsp;&nbsp;
					<input type="button" value="返回" class="btn btn-warning" id="btn_return">
				</div>
			</form>


	</div>
</div>
<script type="text/javascript" src="${basePath}/js/system/user_edit.js"></script>