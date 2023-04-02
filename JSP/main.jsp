<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
    String id_value = (String)session.getAttribute("id_value");
    String name_value = (String)session.getAttribute("name_value");
%>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StageUs Scheduler</title>
    <link rel="stylesheet" href="../CSS/Basic.css">
    <link rel="stylesheet" href="../CSS/main.css">
</head>
<body>
    <header>
        <div>
            <img class="logo" src="../Image/스테이지어스로고.png" alt="회사로고">
        </div>
        <div>
            <input class="view_teammate header_buttons" id="view_teammate" 
            type="button" value="동료 보기" onclick="move_aside()">
            <input class="add_schedule header_buttons" type="button" 
            value="일정 추가" onclick="add_schedule()">
        </div>
        <div class="my_name">
            <p>이민재 사원</p>
            <p><%=id_value%></p>
            <p><%=name_value%></p>
        </div>
    </header>
    <nav>
        <img class="reverse_arrow arrow_blue" src="../Image/arrow_blue.png" alt="파란화살표">
        <h1>3월</h1>
        <img class="arrow_blue" src="../Image/arrow_blue.png" alt="파란화살표">
    </nav>
    <aside>
        <input type="button" class="teammate_name" value="이민재 팀장"></input>
        <input type="button" class="teammate_name" value="김민재 사원"></input>
        <input type="button" class="teammate_name" value="박민재 사원"></input>
        <input type="button" class="teammate_name" value="최민재 사원"></input>
        <input type="button" class="teammate_name" value="리민재 사원"></input>
        <input type="button" class="teammate_name" value="만수민재 사원"></input>
        <input type="button" class="teammate_name" value="남궁민재 사원"></input>
        <input type="button" class="teammate_name" value="방민재 사원"></input>
        <input type="button" class="teammate_name" value="장민재 사원"></input>
        <input type="button" class="teammate_name" value="박민재2 사원"></input>
        <input type="button" class="teammate_name" value="민재 사원"></input>
        <input type="button" class="teammate_name" value="백민재 사원"></input>
    </aside>
    <main>
        <article class="date">
            <h2>1일</h2>
            <section>
                <div class="time">
                    <p>10:00</p>
                </div>
                <div class="contents">
                    미팅 회의
                </div>
                <div class="section_buttons">
                    <input class="modify_button" type="button" value="수정">
                    <button type="button" class="x" id="x"><img  src="../Image/x.png"></button>
                </div>
            </section>
        </article>
        <article class="date">
            <h2>2일</h2>
        </article>
        <article class="date">
            <h2>3일</h2>
            <section>
                <div class="time">
                    <p>12:00</p>
                </div>
                <div class="contents">
                    구월동 고반식당 점심 예약 (6인) 목살 10인분
                </div>
                <div class="section_buttons">
                    <input class="modify_button" type="button" value="수정">
                    <button type="button" class="x" id="x"><img  src="../Image/x.png"></button>
                </div>
            </section>
            <section>
                <div class="time">
                    <p>4:00</p>
                </div>
                <div class="contents">
                    보고서 제출 데드라인
                </div>
                <div class="section_buttons">
                    <input class="modify_button" type="button" value="수정">
                    <button type="button" class="x" id="x"><img  src="../Image/x.png"></button>
                </div>
            </section>
        </article>
        <article class="date">
            <h2>4일</h2>
        </article>
        <article class="date">
            <h2>5일</h2>
        </article>
        <article class="date">
            <h2>6일</h2>
        </article>
        <article class="date">
            <h2>7일</h2>
        </article>
        <article class="date">
            <h2>8일</h2>
        </article>
        <article class="date">
            <h2>9일</h2>
        </article>
        <article class="date">
            <h2>10일</h2>
        </article>
        <article class="date">
            <h2>11일</h2>
        </article>
        <article class="date">
            <h2>12일</h2>
        </article>
    </main>
    <footer>
        <form action="../JSP_Action/add_schedule_action.jsp">
            <input name="date_value" class="choose_date" type="date">
            <input name="time_value" class="choose_time" type="time">
            <input class="type_contents" type="text"
            placeholder="일정을 입력하세요">
            <input class="add_schedule_button" type="submit" value="등록">
        </form>
    </footer>
    <a class="top_button" href="#">
        <img src="../Image/top.png" alt="top버튼">
    </a>
    <script src="../JavaScript/main.js"></script>
</body>
</html>