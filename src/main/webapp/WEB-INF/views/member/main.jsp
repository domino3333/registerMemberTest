<%--
  Created by IntelliJ IDEA.
  User: 강민호
  Date: 26. 1. 27.
  Time: 오후 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main</title>

    <style>
        :root {
            --purple-main: #7b5cff;
            --purple-dark: #5a3fdc;
            --purple-light: #efeaff;
            --text-dark: #333;
        }

        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background: linear-gradient(135deg, #7b5cff, #b59cff);
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
        }

        .container {
            background: white;
            width: 400px;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
            text-align: center;
        }

        h1 {
            margin-bottom: 30px;
            color: var(--purple-dark);
        }

        .menu {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .menu a {
            display: block;
            padding: 15px;
            background: var(--purple-main);
            color: white;
            text-decoration: none;
            font-size: 1.1rem;
            font-weight: bold;
            border-radius: 10px;
            transition: 0.3s;
        }

        .menu a:hover {
            background: var(--purple-dark);
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(123,92,255,0.4);
        }

        .footer {
            margin-top: 30px;
            font-size: 0.8rem;
            color: #999;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>✨ MAIN MENU ✨</h1>

    <div class="menu">
        <a href="/member/joinForm">회원가입</a>
        <a href="/member/memberList">회원리스트</a>
    </div>

    <div class="footer">
        Purple Board System
    </div>
</div>

</body>
</html>

