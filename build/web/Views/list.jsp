<%-- 
    Document   : list
    Created on : May 20, 2024, 4:38:05 PM
    Author     : frien
--%>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Users</title>
    </head>

    <body>
        <div>
            <h1>Super app!</h1>
        </div>

        <div>
            <div>
                <div>
                    <h2>Users</h2>
                </div>
                <%
                    List<String> names = (List<String>) request.getAttribute("userNames");

                    if (names != null && !names.isEmpty()) {
                        out.println("<ui>");
                        for (String s : names) {
                            out.println("<li>" + s + "</li>");
                        }
                        out.println("</ui>");
                    } else out.println("<p>There are no users yet!</p>");
                %>
            </div>
        </div>

        <div>
            <button onclick="location.href='index.html'">Back to main</button>
        </div>
    </body>
</html>
