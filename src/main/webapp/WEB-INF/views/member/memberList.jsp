<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>회원 리스트</title>
    <style>
        body {
            margin: 0;
            min-height: 100vh;
            background: linear-gradient(135deg, #b388ff, #7c4dff);
            display: flex;
            justify-content: center;
            align-items: flex-start;
            font-family: Arial, sans-serif;
            padding-top: 40px;
        }

        .container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 12px;
            width: 500px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #7c4dff;
            margin-bottom: 20px;
        }

        .search-area {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .search-area select,
        .search-area input {
            padding: 6px 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .search-area button {
            padding: 6px 12px;
            background-color: #7c4dff;
            color: white;
            border-radius: 6px;
            border: none;
            cursor: pointer;
        }

        .search-area button:hover {
            background-color: #5e35b1;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #ede7f6;
            color: #5e35b1;
            padding: 10px;
        }

        td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f3e5f5;
        }

        a {
            text-decoration: none;
            color: #6a1b9a;
            transition: color 0.2s ease;
        }

        a:hover {
            color: #4527a0;
        }

        .btn {
            display: block;
            margin: 25px auto 0;
            padding: 10px 18px;
            background-color: #7c4dff;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            text-align: center;
            width: 160px;
        }

        .btn:hover {
            background-color: #5e35b1;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>회원 리스트</h2>

    <!-- 검색창 -->
    <div class="search-area">
        <form action="/member/search" method="get" style="display: flex; gap: 10px;">
            <select name="type">
                <option value="name">이름</option>
                <option value="age">나이</option>
            </select>
            <input type="text" name="keyword" placeholder="검색어 입력" required />
            <button type="submit">검색</button>
        </form>
    </div>

    <table>
        <thead>
        <tr>
            <th>이름</th>
            <th>나이</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="member" items="${memberList}">
            <tr>
                <td>
                    <a href="/member/${member.no}">
                            ${member.name}
                    </a>
                </td>
                <td>${member.age}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a href="/member/main" class="btn">메인으로 돌아가기</a>
</div>

</body>
</html>
