<%@page import="menus.MenuDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 메뉴 삭제
// 삭제할 정보를 넘겨 받는디
String   menu_id       =  request.getParameter("menu_id");
String   menu_name       =  request.getParameter("menu_name");
String   menu_seq       =  request.getParameter("menu_seq");

// DB정보를 삭제한다
MenuDao  menuDao       =  new MenuDao();
menuDao.deleteMenu( menu_id, menu_name, menu_seq );

// MENULIST.JSP 로 돌아간다
String   loc          =  "menulist.jsp";
response.sendRedirect( loc );

%>    