<%-- 
    Document   : index
    Created on : Jan 30, 2013, 5:41:09 PM
    Author     : Jenni Burgmeier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculator</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script type="text/javascript"> 
            function validateRectForm() {
                valid = true;
                var x = document.forms["form1"]["rlegA"].value;
                var y = document.form1.rlegB.value;
                if (x == null || x == "" || isNaN(x)) {
                    alert("You must enter a length for leg A");
                    valid = false;
                } else if (y == null || y == ""|| isNaN(y)) {
                    alert("You must enter a length for leg B");
                    valid = false;
                }
                return valid;
            }
            
            function validateCircForm() {
                valid = true;
                var r = document.forms["form2"]["radius"].value;
                if (r == null || r == '' || isNaN(r)) {
                    alert("You must enter a radius");
                    valid = false;
                    return valid;
                }
                function validateTriForm() {
                    valid = true;
                    var x = document.forms["form3"]["tLegA"].value;
                    var y = document.forms["form3"]["tLegB"].value;
                    if (x == null || x == '' || isNaN(x)) {
                        alert("You must enter a length for leg A");
                        valid = false;
                    } else if (y == null || y == '' || isNan(y)) {
                        alert("You must enter a length for leg B");
                        valid = false;
                    }
                    return valid;
                }     
        </script>
    </head>
    <body>
        <h1><strong>Calculate the Area of a Rectangle</strong></h1>

        <form id="form1" name="form1" method="POST" action="RectController.do" 
              onsubmit="return validateRectForm();">
            <img src="rectangle.jpg" alt="Rectangle" style="float:right" width="204.74" height="115">
            Enter the length of "A": <input type="text" name="rlegA"><br>
            Enter the length of "B": <input type="text" name="rlegB"><br>
            <input id="submit1" name="Submit" type="submit" value="submit">
        </form>
        <p>
            <% String rArea = (String) request.getAttribute("rArea");
                if (rArea != null) {
                    out.print("The area of the rectangle is: " + rArea);
                }
            %>
        </p>

        <h1><strong>Calculate the Area of a Circle</strong></h1>

        <form id="form2" name="form2" method="POST" action="CircController.do"
              onsubmit="return validateCircForm();" >
            <img src="circle.bmp" alt="Circle" style="float:right" width="128" height="128">
            Enter the length of the radius: <input type="text" name="radius">
            <br>
            <input id="submit2" name="Submit" type="submit" value="submit">
        </form>
        <p>
            <%  String cArea = (String) request.getAttribute("cArea");
                if (cArea != null) {
                    out.print("The area of the circle is: " + cArea);
                }
            %>
        </p>


        <h1><strong>Calculate the Length of leg of a Triangle</strong></h1>

        <form id="form3" name="form3" method="POST" action="TriController.do"
              onsubmit="return validateTriForm();" >
            <img src="right_triangle.jpg" alt="Triangle" style="float:right" width="126.5" height="77.25">
            Enter the length of "A": <input type="text" name="tLegA"><br>
            Enter the length of "B": <input type="text" name="tLegB">
            <br>
            <input id="submit3" name="Submit" type="submit" value="submit">
        </form>
        <p>
            <% String tLegC = (String) request.getAttribute("tLegC");
                if (tLegC != null) {
                    out.print("The leg of the triangle is: " + tLegC);
                }
            %>
        </p>
    </body>
</html>
