<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="../CSS/Basic.css">
    <link rel="stylesheet" href="../CSS/create_account.css">
</head>
<body>
    <header>
        <img class="logo" src="../Image/스테이지어스로고.png" alt="회사로고">
    </header>
    <main>
        <h1>회원가입</h1>
        <hr>
        <form name="create_account_form">
            <div class="flex_container">
                <input name="name_value" id="name_value" class="name_value" type="text" placeholder="이름">
                <input type="button" id="check_duplication" onclick="check_duplication()">
                <select name="position_value">
                    <option value="사원">사원</option>
                    <option value="팀장">팀장</option>
                    <option value="관리자">관리자</option>
                </select>
                <select name="department_value">
                    <option value="경영">경영</option>
                    <option value="개발">개발</option>
                    <option value="마케팅">마케팅</option>
                </select>
            </div>
            <input name="id_value" id="id_value"  class="id_value long_input" type="text" placeholder="아이디">
            <input name="pw_value" id="pw_value" class="pw_value long_input" type="password" placeholder="비밀번호">
            <input name="phone_value" id="phone_value" class="phone_value long_input" type="text" 
            placeholder="휴대폰 번호 (-없이 입력하세요)">    
            <hr>
            <input class="submit_button" type="submit" value="가입하기" 
            onclick="create_account_event()">
        </form>
    </main>
    <script src="../JavaScript/create_account.js"></script>
</body>
</html>