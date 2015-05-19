<%@page session="false"%>
<%@page contentType="text/html"
            pageEncoding="utf-8"%><%
%><%@include file="/libs/foundation/global.jsp"%><div>

<div>
    <h3>AppDynamics End User Monitoring</h3>   
    <ul>
        <li><div class="li-bullet"><strong>JavaScript Snippet: </strong><br><%= xssAPI.encodeForHTML(properties.get("snippetCode", "")).replaceAll("\\&\\#xa;","<br>") %></div></li>
    </ul>
</div>

