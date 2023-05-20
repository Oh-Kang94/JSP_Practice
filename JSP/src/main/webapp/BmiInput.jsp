<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI Calculator</title>
</head>
<body>
<form action="bmiOutput.jsp" method="get">
<table>
<tr>
<td>키(cm) :</td>
<td> <input type="text" name="height"></td>
</tr>
<tr>
<td>Kg :</td>
<td> <input type="text" name="weight"><td>
</td>
<tr>
<td></td>
<td><input type="submit" value="Calc BMI"></td>
</tr>
</table>

</form>


</body>
</html>