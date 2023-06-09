<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <link rel="stylesheet" type="text/css" href="./CSS/Basic.css">
    <link rel="stylesheet" type="text/css" href="./CSS/index.css">
</head>
<body>
    <header>
        <img class="logo" src="Image/스테이지어스로고.png" alt="회사로고">
    </header>
    <main>
        <h1>환영합니다 !</h1>
        <form action="./JSP_Action/login_action.jsp">
            <input name="id_value" class="value" type="text" 
            placeholder="아이디를 입력하세요">
            <input name="pw_value" class="value" type="password"
            placeholder="비밀번호를 입력하세요">
            <input id="login" type="submit" value="로그인" style="cursor: pointer">
        </form>
        <div>
            <a href="./JSP/find_ID.jsp" style="cursor: pointer">아이디를 잊으셨나요?</a>
            <a href="./JSP/find_PW.jsp" style="cursor: pointer">비밀번호를 잊으셨나요?</a>
        </div>
            <hr/><span>또는</span><hr/>
        </div>
        <input id="create_account" type="button" value=" 새 계정 만들기 "  style="cursor: pointer"
        onclick="location.href='http://13.209.3.205:8080/scheduler/JSP/create_account.jsp'">
    </main>
    <script src="./JavaScript/index.js"></script>
</body>
</html>