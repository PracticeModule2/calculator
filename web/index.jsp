<%--
  Created by IntelliJ IDEA.
  User: mactr
  Date: 7/26/2018
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Caculator</title>
<style type="text/css">
  #container{
    height: 300px;
    width: 500px;
    border:2px olive solid ;
      text-align: center;
  }
  h2{
    color: olive;
  }
  label{
    width: 10em;
    float: left;
    padding-left: 3px;
  }
  #data input{
    float: left;
    width: 15em;
    margin-bottom: .5em;
  }
</style>
</head>
<body>
<form method="post" action="/calculator">
    <div id = container>
        <h2>Calculator</h2>
        <fieldset>
            <legend>Calculator</legend>
            <table>
                <tr>
                    <td>First Operand:</td>
                    <td><input type="number" name="first"/></td>
                </tr>
                <br>
                <tr>
                    <td>Operator:</td>
                    <td>
                        <select name="operator">
                            <option value="+">addition</option>
                            <option value="-">subtraction</option>
                            <option value="*">multiplication</option>
                            <option value="/">division</option>
                        </select>
                    </td>
                </tr>
                <br>
                <tr>
                    <td>Second Operand:</td>
                    <td><input type="number" name="second"/></td>
                </tr>
                <br>
                <tr>
                    <td></td>
                    <td><input type="submit" value="calculate"/></td>
                </tr>
            </table>
        </fieldset>
    </div>
</form>
</body>
</html>
