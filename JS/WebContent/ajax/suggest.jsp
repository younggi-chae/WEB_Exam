<%@page import="net.sf.json.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!
	String[] keywords ={
		"Ajax", "Ajax������", "Ajax����",	
		"�ڹ�", "�ڹٹڻ�", "�ڹٰ���", "�ڹټ���������"
	};

	public List search(String keyword){
		if(keyword == null || keyword.equals("")){
			return Collections.EMPTY_LIST;
		}
		List result = new ArrayList();
		for(int i=0;i<keywords.length;i++){
			if(keywords[i].startsWith(keyword)){
				result.add(keywords[i].trim());
			}
		}
		return result;
	}

%>    


<%
	request.setCharacterEncoding("utf-8");
	String keyword = request.getParameter("keyword");
	
	List keywordList = search(keyword);
	
// 	for(int i=0;i<keywordList.size();i++){
// 		out.print((String)keywordList.get(i));
// 		if(i<keywordList.size()-1){
// 			out.print(",");
// 		}
// 	}
	
	/* List list = new ArrayList();
	list.add(new Member("ȫ�浿", "����"));
	list.add(new Member("�ڱ浿", "�λ�"));
	list.add(new Member("���浿", "�뱸"));
 */

	String json = JSONArray.fromObject(keywordList).toString();
	out.print(json);
%>






















