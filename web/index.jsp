<%-- 
    Document   : index
    Created on : Jan 30, 2013, 5:41:09 PM
    Author     : jgray2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculator</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    </head>
    <body>
        <script type="text/javascript"> 
            function validateForm() {
                var x = document.forms["form1"]["form1"].value;
                if (x == null || x == "") {
                    alert("You must enter a length for leg A");
                    return false;
                }
            }
        </script>

        <h1><strong>Calculate the Area of a Rectangle</strong></h1>

        <form id="form1" name="form1" method="POST" action="RectController.do" 
              onsubmit="return validateForm();" >
            <img src="/Images/rectangle.jpg" alt="Rectangle" style="float:right" width="140" height="70">
            Enter the length of "A": <input type="text" name="rlegA"><br>
            Enter the length of "B": <input type="text" name="rlegB"><br>
            <input id="submit1" name="Submit" type="submit" value="submit">
        </form>


        <h1><strong>Calculate the Area of a Circle</strong></h1>

        <form id="form2" name="form2" method="POST" action="CircController.do">
            <img src="/Images/circle.bmp" alt="Circle" style="float:right" width="140" height="70">
            Enter the length of the radius: <input type="text" name="radius">
            <br>
            <input id="submit2" name="Submit" type="submit" value="submit">
        </form>


        <h1><strong>Calculate the Length of leg of a Triangle</strong></h1>

        <form id="form3" name="form3" method="POST" action="TriController.do">
            <img src="/Images/right_triangle.bmp" alt="Triangle" style="float:right" width="140" height="70">
            Enter the length of "A": <input type="text" name="tLegA"><br>
            Enter the length of "B": <input type="text" name="tLegB">
            <br>
            <input id="submit3" name="Submit" type="submit" value="submit">
        </form>
    </body>
</html>
