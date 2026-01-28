<%--
  Created by IntelliJ IDEA.
  User: 강민호
  Date: 26. 1. 27.
  Time: 오후 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>회원 상세</title>
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

        h2 {
            text-align: center;
            color: #7c4dff;
            margin-bottom: 25px;
        }

        .info {
            margin-bottom: 18px;
        }

        .label {
            font-weight: bold;
            color: #5e35b1;
            margin-bottom: 5px;
        }

        .value {
            padding: 10px;
            background-color: #f3e5f5;
            border-radius: 6px;
        }

        .btn-area {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap; /* 모바일에서도 줄 바꿈 가능하게 */
            margin-top: 30px;
            gap: 10px;
        }

        .btn {
            padding: 10px 18px;
            text-decoration: none;
            border-radius: 6px;
            text-align: center;
            flex: 1 1 45%; /* 버튼 2개씩 한 줄 */
            color: white;
            transition: 0.2s;
        }

        .btn:hover {
            opacity: 0.9;
        }

        /* 기존 버튼: 목록/메인 */
        .btn-list,
        .btn-main {
            background-color: #7c4dff;
        }

        .btn-list:hover,
        .btn-main:hover {
            background-color: #5e35b1;
        }

        /* 수정 버튼 */
        .btn-edit {
            background-color: #7c4dff;
        }

        .btn-edit:hover {
            background-color: #5e35b1;
        }

        /* 삭제 버튼 */
        .btn-delete {
            background-color: #e53935;
        }

        .btn-delete:hover {
            background-color: #b71c1c;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>회원 상세 정보</h2>

    <div class="info">
        <div class="label">이름</div>
        <div class="value">${member.name}</div>
    </div>

    <div class="info">
        <div class="label">나이</div>
        <div class="value">${member.age}</div>
    </div>

    <div class="btn-area">
        <a href="/member/memberList" class="btn btn-list">목록으로</a>
        <a href="/member/main" class="btn btn-main">메인으로</a>

        <!-- 수정 버튼: GET /member/edit/{no} -->
        <a href="/member/edit/${member.no}" class="btn btn-edit">수정</a>

        <!-- 삭제 버튼: onclick으로 confirm 후 form submit -->
        <form action="/member/delete/${member.no}" method="post" style="flex:1 1 45%;">
            <button type="submit" class="btn btn-delete"
                    onclick="return confirm('정말 삭제하시겠습니까?');">
                삭제
            </button>
        </form>
    </div>
</div>

</body>
</html>
