<%-- 
    Document   : demoss
    Created on : Oct 13, 2023, 3:49:28 PM
    Author     : toanl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="session" method="post">
        Input: <input type="text" name="text">
        <input type="submit" value="Submit">
           
        </form>
  <h1>Danh sách giá trị:</h1>
        <ul>
            <%
                ArrayList<String> values = (ArrayList<String>) session.getAttribute("values");

                if (values != null) {
                    for(int i=0;i<values.size();i++) {
            %>
            <h3>
               <%=values.get(i) %>
            </h3>
            <%
                    }
                }
            %>
        </ul>
    </body>
</html>
