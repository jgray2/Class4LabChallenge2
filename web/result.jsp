<%-- 
    Document   : result
    Created on : Jan 30, 2013, 6:06:48 PM
    Author     : jgray2
--%>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculation</title>
    </head>
    <body>
        <h1>Calculation Answer</h1>
        <p>
            <% String rArea = (String) request.getAttribute("rArea");
                String cArea = (String) request.getAttribute("cArea");
                String tLegC = (String) request.getAttribute("tLegC");

                if (rArea != null)
                    out.print("The area of the rectangle is: " + rArea);
                else if (cArea != null) 
                    out.print("The area of the circle is: " + cArea);
                else 
                    out.print("The leg of the triangle is: " + tLegC);
            %>
        </p>

    </body>
</html>
