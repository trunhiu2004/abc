<%-- 
    Document   : add
    Created on : May 20, 2024, 4:37:54 PM
    Author     : frien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add new user</title>
    </head>

    <body>
        <div>
            <h1>Super app!</h1>
        </div>

        <div>
            <%
                if (request.getAttribute("userName") != null) {
                    out.println("<p>User '" + request.getAttribute("userName") + "' added!</p>");
                }
            %>
            <div>
                <div>
                    <h2>Add user</h2>
                </div>

                <form method="post">
                    <label>Name:
                        <input type="text" name="name"><br />
                    </label>
                    <label>Password:
                        <input type="password" name="pass"><br />
                    </label>
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>

        <div>
            <button onclick="location.href='index.html'">Back to main</button>
        </div>
    </body>
</html>
