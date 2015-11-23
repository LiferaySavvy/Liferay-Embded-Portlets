<%@include file="init.jsp"%>
<%@ page import="com.liferay.portal.theme.ThemeDisplay" %>
<%@ page import="com.meera.dashboard.RuntimePortletEmbedUtil" %>
 <portlet:renderURL var="dashBoardRenderURL" windowState="NORMAL">
</portlet:renderURL>
<h1><aui:a href="<%=dashBoardRenderURL.toString()%>">Click Here to go to Dash Board</aui:a></h1>
<%
final String portletId = "58";
String portletIdvalue=(String)renderRequest.getPortletSession().getAttribute("portletId");
final String portletHtml = RuntimePortletEmbedUtil.renderPortlet(renderRequest, renderResponse, portletIdvalue,"");
%>
<%=portletHtml%>