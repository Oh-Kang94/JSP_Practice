<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보입력</title>
</head>
<body>
<p align="center"> 
 <h2>개인정보입력</h2>
    <form action="Userinfo_insert_01S" method="get">
        이름 : <input type="text" name="name"><br/>
        아이디 : <input type="text" name="id"><br/>
        패스워드 : <input type="password" name="password"><br/>
        성별 :
        남 <input type="radio" name="gender" value="male" checked="checked">
        여 <input type="radio" name="gender" value="female"><br/>
        메일 수신여부 : 
            공지메일<input type="checkbox" name="inotice">
            광고메일<input type="checkbox" name="pnotice">
            배송확인메일<input type="checkbox" name="dnotice"><br/>
        직업 : 
            <select name="job">
                <option>회사원</option>
                <option>학생</option>
                <option>기타</option>
            </select><br/>
        <input type="reset" value="취소">
        <input type="submit" value="확인">
    </form>
</p>
 
</body>
</html>
