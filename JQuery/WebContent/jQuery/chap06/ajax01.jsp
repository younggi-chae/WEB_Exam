<%@page import="kosta.Member"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	Member m1 = new Member();	
	m1.setName("ȫ�浿");
	m1.setAddress("����");
	
	Member m2 = new Member();	
	m2.setName("��ö��");
	m2.setAddress("�λ�");
	
	List<Member> list = new ArrayList<Member>();
	list.add(m1);
	list.add(m2);
	
	String str = JSONArray.fromObject(list).toString();
	out.print(str);

%>    













