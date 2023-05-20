<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bmi output</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
double height =Double.parseDouble(request.getParameter("height"));
double weight =Double.parseDouble(request.getParameter("weight"));

%>

입력한 키는 <%=String.format("%.0f",height) %> 이고 <br/>
입력한 몸무게는 <%=String.format("%.0f",weight) %> 이고 <br/>
당신의 bmi수치는 <%=String.format("%.3f",bmicalc(height, weight))%> 이고 <br/>
입력한 키는 <%=bmi(bmicalc(height, weight)) %> 이고 <br/>
<img alt="체지방측정" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxX1vWy5AxqgsdAdF4hMM6aRs4NHlPmyCs8w&usqp=CAU">


</body>
<%!
private double bmicalc(double height, double weight){
	double result = weight/((height/100)*(height/100));
	return result;
}

private String bmi(double bmiresult){
	if(0<=bmiresult && bmiresult<18.5){
		return "저체중";
	}else if(18.5<=bmiresult&& bmiresult<23){
		return "정상체중";
	}else if(23<=bmiresult&& bmiresult<25){
		return "과체중";
	}else if(25<=bmiresult && bmiresult<30){
		return "비만";
	}else{
		return "고도비만";
     }

}
%>

</html>