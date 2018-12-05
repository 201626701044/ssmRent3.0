<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
 <div style="width:500px;margin:0px auto;text-align:center">
	<table align='center' border='1' cellspacing='0'>
	    <tr>
	        <td>member_ID</td>
	        <td>member_name</td>
            <td>编辑</td>
            <td>删除</td>
	    </tr>
	    <c:forEach items="${cs}" var="c" varStatus="st">
	        <tr>
	            <td>${c.member_ID}</td>
	            <td>${c.member_name}</td>
                <td><a href="editMember?member_ID=${c.member_ID}">编辑</a></td>
                <td><a href="/deleteMember?member_ID=${c.member_ID}">删除</a></td>
	        </tr>
	    </c:forEach>
	</table>
	<div style="text-align:center">
		<a href="?start=0">首  页</a>
		<a href="?start=${page.start-page.count}">上一页</a>
		<a href="?start=${page.start+page.count}">下一页</a>
		<a href="?start=${page.last}">末  页</a>
	</div>

     <div style="text-align:center;margin-top:40px">

         <form method="post" action="${pageContext.request.contextPath }/member/listMember.controller">
             会员名： <input name="member_name" value="" type="text"> <br><br>
             <input type="submit" value="增加会员">
         </form>

     </div>
 </div>
