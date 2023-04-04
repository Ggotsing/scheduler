<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
    <link rel="stylesheet" href="../CSS/Basic.css">
    <link rel="stylesheet" href="../CSS/find_PW.css">
</head>
<body>
    <header>
        <img class="logo" src="../Image/스테이지어스로고.png" alt="회사로고">
    </header>
    <main>
        <h1>내 계정 찾기</h1>
        <hr>
        <form  name="find_PW_form">
            <input name="id_value" class="id_value" type="text" placeholder="아이디">
            <input name="phone_value" class="phone_value" type="text" placeholder="휴대폰 번호 (-없이 입력하세요)">    
        <hr>
        <div style="text-align: end;">
            <div class="cencel">
                <a href="../index.html">취소</a>
            </div>
            <input class="submit_button" type="submit" onclick="find_PW_Event()">
        </div>
        </form>
    </main>
    <script src="../JavaScript/find_PW.js"></script>
</body>
</html>