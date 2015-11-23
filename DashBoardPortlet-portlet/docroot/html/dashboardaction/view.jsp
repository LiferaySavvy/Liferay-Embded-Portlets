<%@include file="init.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript"> 
function setPortletId(portletId){
	//alert(portletId);
	jQuery("#<portlet:namespace />portletId").attr("value",portletId);
	submitForm(document.<portlet:namespace />dashBoardForm);
}
  
 </script>
 <portlet:actionURL var="dashBoardActionURL" windowState="NORMAL">
 	<portlet:param name="javax.portlet.action" value="naviGateToPortletPage" />
	<portlet:param name="jspPage" value="/html/dashboardaction/dashboard_portlet.jsp" />
</portlet:actionURL>
<aui:form action="<%=dashBoardActionURL.toString() %>" method="POST"
	name="dashBoardForm" id="dashBoardForm">
 <aui:input name="portletId" id="portletId" value="" type="hidden"></aui:input>
<div id="container">	
<ul id="items">
    <li onclick="setPortletId(this.id);" id="31">
    	<p class="image"><a href="#" ><img src="/html/themes/classic/images/file_system/large/folder_full_image.png" alt="Template preview" /></a></p>
    	<h3>Image Management</h3>
    	<p class="info"></p>
    </li>
    
    <li onclick="setPortletId(this.id);" id="20">
    	<p class="image"><a href="#" ><img src="/html/themes/classic/images/file_system/large/folder_full_document.png" /></a></p>
    	<h3>Document Management</h3>
    	<p class="info"></p>
    </li>  
</ul>

</div>
</aui:form>
