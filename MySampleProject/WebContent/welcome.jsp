
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Welcome page</title>
    </head>
     <%
        String backColor = request.getParameter("COLOR");       
        if (backColor == null)
           backColor = "Wheat";        
     %>
    <BODY BGCOLOR="<%= backColor %>" >
    <%
        String message = (String)request.getAttribute("message");
    %>
        <h1><b>Welcome <%= message %></b></h1>
      Successfully Logged in
    </body>
</html>