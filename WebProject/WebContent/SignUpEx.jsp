<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<jsp:useBean id="ub" class="UserDataBase.UserBean" scope="page"/>
<jsp:setProperty property="*" name="ub"/>

<h1><jsp:getProperty name="ub" property="UserId"/></h1>