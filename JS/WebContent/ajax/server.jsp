<%@page import="net.sf.json.JSONArray"%>
<%@page import="kosta.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


	<%
		List list = new ArrayList();
	
		list.add(new Member("ȫ�浿", "����"));
		list.add(new Member("����ȣ", "��⵵"));
		list.add(new Member("������", "LA"));
		
		String json = JSONArray.fromObject(list).toString();
		out.print(json);
	%>













