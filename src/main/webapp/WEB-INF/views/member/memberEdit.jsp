<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 수정</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            background: linear-gradient(135deg, #b388ff, #7c4dff);
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
        }
        .container {
            background-color: #ffffff;
            padding: 35px 45px;
            border-radius: 12px;
            width: 420px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }
        h2 { text-align: center; color: #7c4dff; margin-bottom: 25px; }
        .info { margin-bottom: 18px; }
        .label { font-weight: bold; color: #5e35b1; margin-bottom: 5px; }
        .value input { padding: 10px; width: 100%; border-radius: 6px; border: 1px solid #ccc; }
        .btn-area { display: flex; justify-content: space-between; margin-top: 30px; gap: 10px; }
        .btn { padding: 10px 18px; border-radius: 6px; text-align: center; color: white; text-decoration: none; width: 48%; }
        .btn-save { background-color: #7c4dff; }
        .btn-save:hover { background-color: #5e35b1; }
        .btn-cancel { background-color: #e53935; }
        .btn-cancel:hover { background-color: #b71c1c; }
    </style>
</head>
<body>

<div class="container">
    <h2>회원 수정화면</h2>

    <form action="/member/editPost" method="post">
        <!-- 회원 ID는 hidden으로 보내기 -->
        <input type="hidden" name="no" value="${member.no}" />

        <div class="info">
            <div class="label">이름</div>
            <div class="value">
                <input type="text" name="name" value="${member.name}" required />
            </div>
        </div>

        <div class="info">
            <div class="label">비밀번호</div>
            <div class="value">
                <input type="password" name="password" value="${member.password}" required />
            </div>
        </div>

        <div class="info">
            <div class="label">나이</div>
            <div class="value">
                <input type="number" name="age" value="${member.age}" required />
            </div>
        </div>

        <div class="btn-area">
            <button type="submit" class="btn btn-save">저장</button>
            <button type="reset" class="btn btn-cancel">취소</button>
        </div>
    </form>
</div>

</body>
</html>
