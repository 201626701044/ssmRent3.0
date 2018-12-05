<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 <div style="width:500px;margin:0px auto;text-align:center">
	
	
	<div style="text-align:center;margin-top:40px">
		
		<form method="post" action="updateMember">
			会员名： <input name="member_name" value="${c.member_name}" type="text"> <br><br>
			<input type="hidden" value="${c.member_ID}" name="member_ID">
			<input type="submit" value="增加会员">
		</form>

	</div>	
 </div>
