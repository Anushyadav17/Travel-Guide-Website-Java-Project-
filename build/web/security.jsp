<%
    response.addHeader("Pragma","no-cache");
    response.addHeader("Cache-control", "no-store");
    String name = (String)session.getAttribute("CALL");
    if(name==null)
    {
       response.sendRedirect("home.jsp");
    }
    if(session==null)
    {
       response.sendRedirect("home.jsp");
    }
%>