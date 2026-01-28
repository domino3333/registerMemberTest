<%--
  Created by IntelliJ IDEA.
  User: 강민호
  Date: 26. 1. 27.
  Time: 오후 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 성공</title>
    <style>
        :root {
            --purple-main: #7c3aed;
            --purple-dark: #5b21b6;
            --purple-light: #ede9fe;
            --bg-dark: #0f0f1a;
        }

        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #0f0f1a, #1e1b4b);
            font-family: 'Pretendard', sans-serif;
            color: white;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .success-box {
            background: rgba(30, 27, 75, 0.9);
            border: 2px solid var(--purple-main);
            border-radius: 16px;
            padding: 50px 40px;
            width: 420px;
            text-align: center;
            box-shadow: 0 0 40px rgba(124, 58, 237, 0.4);
        }

        .success-icon {
            font-size: 3.5rem;
            margin-bottom: 20px;
            color: var(--purple-light);
        }

        h1 {
            margin: 0;
            font-size: 1.8rem;
            color: var(--purple-light);
        }

        p {
            margin: 15px 0 30px;
            color: #c7c3ff;
            font-size: 0.95rem;
        }

        .btn-main {
            display: inline-block;
            padding: 12px 30px;
            background: var(--purple-main);
            color: white;
            font-weight: bold;
            border-radius: 8px;
            text-decoration: none;
            transition: 0.3s;
            box-shadow: 0 0 15px rgba(124, 58, 237, 0.5);
        }

        .btn-main:hover {
            background: white;
            color: var(--purple-dark);
            transform: translateY(-2px);
        }

        .footer {
            margin-top: 30px;
            font-size: 0.75rem;
            color: #555;
            letter-spacing: 1px;
        }
    </style>
</head>
<body>

<div class="success-box">
    <div class="success-icon">🎃</div>
    <h1>회원가입 실패</h1>
    <p>
        회원가입에 실패하였습니다.
    </p>

    <a href="/member/main" class="btn-main">메인 화면으로</a>

    <div class="footer">
        [ MEMBER REGISTER SYSTEM ]
    </div>
</div>

</body>
</html>
