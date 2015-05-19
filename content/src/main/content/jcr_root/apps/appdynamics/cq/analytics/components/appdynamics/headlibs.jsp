<%@page session="false" import="org.apache.log4j.Logger,
                org.apache.sling.api.resource.Resource,
                org.apache.sling.api.resource.ValueMap,
                org.apache.sling.api.resource.ResourceUtil,
                com.day.cq.wcm.webservicesupport.Configuration,
                com.day.cq.wcm.webservicesupport.ConfigurationManager,
                org.apache.commons.lang.StringUtils" %>
<%@include file="/libs/foundation/global.jsp" %><%
String[] services = pageProperties.getInherited("cq:cloudserviceconfigs", new String[]{});
ConfigurationManager cfgMgr = sling.getService(ConfigurationManager.class);
if(cfgMgr != null) {
    String javascriptsnippet = null;
    Configuration cfg = cfgMgr.getConfiguration("appdynamics", services);
    if(cfg != null) {
        javascriptsnippet = cfg.get("snippetCode", "");
    }
    if(StringUtils.isNotBlank(javascriptsnippet)) {
    %>
    <script type="text/javascript"><%=javascriptsnippet%>
    </script><%
    }
}
%>