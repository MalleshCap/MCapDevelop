<%@taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login page</title>
    </head>
  <%
        String backColor = request.getParameter("COLOR");       
        if (backColor == null)
           backColor = "SkyBlue";        
     %>
    <BODY BGCOLOR="<%= backColor %>" >
    <h1>Login</h1>
    <html:form action="login">
        <b>User Name</b>
         <html:text property="userName"></html:text>
         <html:errors property="userName" />
         <br/>
        <b>Password</b>&nbsp; &nbsp; 
        <html:password property="password"></html:password>
         <html:errors property="password"/>
        <html:submit/>
        <html:reset/>
    </html:form>
    </body>
</html>