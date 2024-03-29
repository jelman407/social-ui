<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multiplication v1</title>
<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
<!--  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
-->
<script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/multiplication-client.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/gamification-client.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center">안녕하세요, 소셜 곱셈입니다!!!풀어보자~</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<h3 class="text-center">오늘의 문제:</h3>
				<h1 class="text-center">
					<span class="multiplication-a"></span> x <span class="multiplication-b"></span>
				</h1>
				<p>
				<form id="attempt-form">
					<div class="form-group">
						<label for="result-attempt">답은?</label> <input type="text" name="result-attempt" id="result-attempt" class="form-control">
					</div>
					<div class="form-group">
						<label for="user-alias">닉네임:</label> <input type="text" name="user-alias" id="user-alias" class="form-control">
					</div>
					<input type="submit" value="확인" class="btn btn-default">
				</form>
				</p>
				<div class="result-message"></div>

				<div id="stats-div" style="display: none;">
					<h2>통계</h2>
					<table id="stats" class="table">
						<tbody>
							<tr>
								<td class="info">사용자 ID:</td>
								<td id="stats-user-id"></td>
							</tr>
							<tr>
								<td class="info">점수:</td>
								<td id="stats-score"></td>
							</tr>
							<tr>
								<td class="info">배지:</td>
								<td id="stats-badges"></td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			<div class="col-md-6">
				<h3>리더보드</h3>
				<table id="leaderboard" class="table">
					<tr>
						<th>사용자 ID</th>
						<th>점수</th>
					</tr>
					<tbody id="leaderboard-body"></tbody>
				</table>
				<div class="text-right">
					<button id="refresh-leaderboard" class="btn btn-default" type="submit">새로고침</button>
				</div>

				<div id="results-div" style="display: none;">
					<h2>최근 답안</h2>
					<table id="results" class="table">
						<tr>
							<th>답안 ID</th>
							<th>곱셈</th>
							<th>입력한 값</th>
							<th>정답?</th>
						</tr>
						<tbody id="results-body"></tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
</body>
</html>