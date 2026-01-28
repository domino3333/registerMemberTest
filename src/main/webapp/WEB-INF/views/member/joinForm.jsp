<%--
  Created by IntelliJ IDEA.
  User: 강민호
  Date: 26. 1. 27.
  Time: 오후 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Join</title>

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
            width: 420px;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: var(--purple-dark);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: var(--text-dark);
        }

        input {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 1rem;
            outline: none;
            transition: 0.2s;
        }

        input:focus {
            border-color: var(--purple-main);
            box-shadow: 0 0 0 3px rgba(123,92,255,0.2);
        }

        .btn-submit {
            width: 100%;
            padding: 15px;
            margin-top: 10px;
            background: var(--purple-main);
            color: white;
            font-size: 1.1rem;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-submit:hover {
            background: var(--purple-dark);
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(123,92,255,0.4);
        }

        .btn-back {
            margin-top: 20px;
            text-align: center;
        }

        .btn-back a {
            color: #888;
            text-decoration: none;
            font-size: 0.9rem;
        }

        .btn-back a:hover {
            color: var(--purple-main);
        }
    </style>
</head>
<body>

<div class="container">
    <h1>✨ 회원가입 ✨</h1>

    <form action="/member/postInfo" method="post">

        <div class="form-group">
            <label for="name">이름</label>
            <input type="text" id="name" name="name" placeholder="이름을 입력하세요">
        </div>

        <div class="form-group">
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">
        </div>

        <div class="form-group">
            <label for="age">나이</label>
            <input type="number" id="age" name="age" placeholder="나이를 입력하세요">
        </div>

        <button type="submit" class="btn-submit">가입하기</button>
    </form>

    <div class="btn-back">
        <a href="/member/main">← 메인으로 돌아가기</a>
    </div>
</div>

</body>
</html>

