<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter"%>

<%@ page import="user.UserDAO"%>

<%@ page import="evaluation.EvaluationDAO"%>

<%@ page import="evaluation.EvaluationDTO"%>

<%@ page import="java.util.ArrayList"%>

<%@ page import="java.net.URLEncoder"%>
<!doctype html>

<html>

<head>

<title>LA 다저스 팬페이지</title>

<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- 부트스트랩 CSS 추가하기 -->

<link rel="stylesheet" href="./css/bootstrap.min.css">

<!-- 커스텀 CSS 추가하기 -->

<link rel="stylesheet" href="./css/custom.css">

</head>

<body>
<%

	request.setCharacterEncoding("UTF-8");

	String textDivide = "전체";

	String searchType = "최신순";

	String search = "";

	int pageNumber = 0;

	if(request.getParameter("textDivide") != null) {

		textDivide = request.getParameter("textDivide");

	}

	if(request.getParameter("searchType") != null) {

		searchType = request.getParameter("searchType");

	}

	if(request.getParameter("search") != null) {

		search = request.getParameter("search");

	}

	if(request.getParameter("pageNumber") != null) {

		try {

			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));

		} catch (Exception e) {

			System.out.println("검색 페이지 번호 오류");

		}

	}

	String userID = null;

	if(session.getAttribute("userID") != null) {

		userID = (String) session.getAttribute("userID");

	}

	if(userID == null) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('로그인을 해주세요.');");

		script.println("location.href = 'userLogin.jsp'");

		script.println("</script>");

		script.close();	

	}

	boolean emailChecked = new UserDAO().getUserEmailChecked(userID);

	if(emailChecked == false) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("location.href = 'emailSendConfirm.jsp'");

		script.println("</script>");

		script.close();		

		return;

	}

%>	

	<nav class="navbar navbar-expand-lg navbar-light bg-light">

		<a class="navbar-brand" href="index.jsp">LA 다저스 팬페이지</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar">

			<span class="navbar-toggler-icon"></span>

		</button>

		<div class="collapse navbar-collapse" id="navbar">

			<ul class="navbar-nav mr-auto">

				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">메인</a></li>
					
					<li class="nav-item active"><a class="nav-link"
					href="introducePlayer.jsp">선수 소개</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="dropdown"
					data-toggle="dropdown"> 회원 관리 </a>

					<div class="dropdown-menu" aria-labelledby="dropdown">


						<a class="dropdown-item" href="userLogin.jsp">로그인</a> <a
							class="dropdown-item" href="userRegister.jsp">회원가입</a> <a
							class="dropdown-item" href="userLogout.jsp">로그아웃</a>

					</div></li>

			</ul>

			<form action="./index.jsp" method="get"
				class="form-inline my-2 my-lg-0">

				<input type="text" name="search" class="form-control mr-sm-2"
					placeholder="내용을 입력하세요.">

				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>

			</form>

		</div>

	</nav>

	<div class="container">

		<form method="get" action="./index.jsp" class="form-inline mt-3">

			<select name="textDivide" class="form-control mx-1 mt-2">

				<option value="All">전체</option>

				<option value="Player">선수명</option>

				<option value="Position">포지션</option>

				<option value="etc">기타</option>

			</select> <input type="text" name="search" class="form-control mx-1 mt-2"
				placeholder="내용을 입력하세요.">

			<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>

			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal"
				href="#registerModal">등록하기</a> <a class="btn btn-danger ml-1 mt-2"
				data-toggle="modal" href="#reportModal">신고</a>

		</form>

		<div class="card bg-light mt-3">

			<div class="card-header bg-light">

				<div class="row">

					<div class="col-8 text-left">
						Cody Bellinger&nbsp;<small>Out Fielder</small>
					</div>

					<div class="col-4 text-right">

						종합 <span style="color: red;">A</span>

					</div>

				</div>

			</div>

			<div class="card-body">

				<h5 class="card-title">

					최고의 선수!!&nbsp;<small>(2019 First-Half)</small>

				</h5>

				<p class="card-text">공격 수비 주루 모든 부분에서 최고의 모습을 보여주고있다.</p>

				<div class="row">

					<div class="col-9 text-left">

						타격 <span style="color: red;">A</span> 수비 <span style="color: red;">A</span>

						주루 <span style="color: red;">B</span> <span style="color: green;">(추천:
							15★)</span>

					</div>

					<div class="col-3 text-right">

						<a onclick="return confirm('추천하시겠습니까?')"
							href="./likeAction.jsp?evaluationID=">추천</a> <a
							onclick="return confirm('삭제하시겠습니까?')"
							href="./deleteAction.jsp?evaluationID=">삭제</a>

					</div>

				</div>

			</div>

		</div>

		<div class="card bg-light mt-3">

			<div class="card-header bg-light">

				<div class="row">

					<div class="col-8 text-left">
						Justin Tuner&nbsp;<small>Third Baseman</small>
					</div>

					<div class="col-4 text-right">

						종합 <span style="color: red;">A</span>

					</div>

				</div>

			</div>

			<div class="card-body">

				<h5 class="card-title">

					최고의 선수!!&nbsp;<small>(2019 First-Half)</small>

				</h5>

				<p class="card-text">필요할때 해결해주는 해결사</p>

				<div class="row">

					<div class="col-9 text-left">

						타격 <span style="color: red;">A</span> 수비 <span style="color: red;">A</span>

						주루 <span style="color: red;">B</span> <span style="color: green;">(추천:
							10)</span>

					</div>

					<div class="col-3 text-right">

						<a onclick="return confirm('추천하시겠습니까?')"
							href="./likeAction.jsp?evaluationID=">추천</a> <a
							onclick="return confirm('삭제하시겠습니까?')"
							href="./deleteAction.jsp?evaluationID=">삭제</a>

					</div>

				</div>

			</div>

		</div>

		<div class="card bg-light mt-3">

			<div class="card-header bg-light">

				<div class="row">

					<div class="col-8 text-left">
						HyunJin Ryu&nbsp;<small>Pitcher</small>
					</div>

					<div class="col-4 text-right">

						종합 <span style="color: red;">A</span>

					</div>

				</div>

			</div>

			<div class="card-body">

				<h5 class="card-title">

					85년도 이후 최고 피칭!&nbsp;<small>(2019 First-Half)</small>

				</h5>

				<p class="card-text">송곳 제구력으로 괴물같은 이닝이터 능력을 보여준다.</p>

				<div class="row">

					<div class="col-9 text-left">

						타격 <span style="color: red;">C</span> 수비 <span style="color: red;">A</span>

						주루 <span style="color: red;">B</span> <span style="color: green;">(추천:
							11)</span>

					</div>

					<div class="col-3 text-right">

						<a onclick="return confirm('추천하시겠습니까?')"
							href="./likeAction.jsp?evaluationID=">추천</a> <a
							onclick="return confirm('삭제하시겠습니까?')"
							href="./deleteAction.jsp?evaluationID=">삭제</a>

					</div>

				</div>

			</div>

		</div>

		<ul class="pagination justify-content-center mt-3">

			<li class="page-item"><a class="page-link" href="#">Previous</a></li>

			<li class="page-item"><a class="page-link" href="#">Next</a></li>

		</ul>

		<div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
			aria-labelledby="modal" aria-hidden="true">

			<div class="modal-dialog">

				<div class="modal-content">

					<div class="modal-header">

						<h5 class="modal-title" id="modal">Text</h5>

						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">

							<span aria-hidden="true">&times;</span>

						</button>

					</div>

					<div class="modal-body">

						<form action="./evaluationRegisterAction.jsp" method="post">

							<div class="form-row">

								<div class="form-group col-sm-6">

									<label>선수명</label> <input type="text" name="playerName"
										class="form-control" maxlength="20">

								</div>

								<div class="form-group col-sm-6">

									<label>포지션</label> <input type="text" name="position"
										class="form-control" maxlength="20">

								</div>

							</div>

							<div class="form-row">

								<div class="form-group col-sm-4">

									<label>활약 연도</label> <select name="playYear"
										class="form-control">

										<option value="2011">2011</option>

										<option value="2012">2012</option>

										<option value="2013">2013</option>

										<option value="2014">2014</option>

										<option value="2015">2015</option>

										<option value="2016">2016</option>

										<option value="2017">2017</option>

										<option value="2018" selected>2018</option>

										<option value="2019">2019</option>

										<option value="2020">2020</option>

										<option value="2021">2021</option>

										<option value="2022">2022</option>

										<option value="2023">2023</option>

									</select>

								</div>

								<div class="form-group col-sm-4">

									<label>First-Second Half</label> <select name="semester"
										class="form-control">

										<option name="First-Half" selected>First-Half</option>


										<option name="Second-Half">Second-Half</option>


									</select>

								</div>

								<div class="form-group col-sm-4">

									<label>글 종류</label> <select name="textDivide"
										class="form-control">

										<option name="Evaluate" selected>Evaluate</option>

										<option name="Diary">Diary</option>

										<option name="Message">Message</option>

									</select>

								</div>

							</div>

							<div class="form-group">

								<label>제목</label> <input type="text" name="writeTitle"
									class="form-control" maxlength="20">

							</div>

							<div class="form-group">

								<label>내용</label>

								<textarea type="text" name="writeContent" class="form-control"
									maxlength="2048" style="height: 180px;"></textarea>

							</div>

							<div class="form-row">

								<div class="form-group col-sm-3">

									<label>종합</label> <select name="totalScore"
										class="form-control">

										<option value="A" selected>A</option>

										<option value="B">B</option>

										<option value="C">C</option>

										<option value="D">D</option>

										<option value="F">F</option>

									</select>

								</div>

								<div class="form-group col-sm-3">

									<label>타격</label> <select name="batting" class="form-control">

										<option value="A" selected>A</option>

										<option value="B">B</option>

										<option value="C">C</option>

										<option value="D">D</option>

										<option value="F">F</option>

									</select>

								</div>

								<div class="form-group col-sm-3">

									<label>수비</label> <select name="defending" class="form-control">

										<option value="A" selected>A</option>

										<option value="B">B</option>

										<option value="C">C</option>

										<option value="D">D</option>

										<option value="F">F</option>

									</select>

								</div>

								<div class="form-group col-sm-3">

									<label>주루</label> <select name="running" class="form-control">

										<option value="A" selected>A</option>

										<option value="B">B</option>

										<option value="C">C</option>

										<option value="D">D</option>

										<option value="F">F</option>

									</select>

								</div>

							</div>

							<div class="modal-footer">

								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">취소</button>

								<button type="submit" class="btn btn-primary">등록하기</button>

							</div>

						</form>

					</div>

				</div>

			</div>

		</div>

		<div class="modal fade" id="reportModal" tabindex="-1" role="dialog"
			aria-labelledby="modal" aria-hidden="true">

			<div class="modal-dialog">

				<div class="modal-content">

					<div class="modal-header">

						<h5 class="modal-title" id="modal">신고하기</h5>

						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">

							<span aria-hidden="true">&times;</span>

						</button>

					</div>

					<div class="modal-body">

						<form method="post" action="./reportAction.jsp">

							<div class="form-group">

								<label>신고 제목</label> <input type="text" name="reportTitle"
									class="form-control" maxlength="20">

							</div>

							<div class="form-group">

								<label>신고 내용</label>

								<textarea type="text" name="reportContent" class="form-control"
									maxlength="2048" style="height: 180px;"></textarea>

							</div>

							<div class="modal-footer">

								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">취소</button>

								<button type="submit" class="btn btn-danger">신고하기</button>

							</div>

						</form>

					</div>

				</div>

			</div>

		</div>

		<footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">

			Copyright ⓒ 2019 이재헌 All Rights Reserved. </footer>

		<!-- 제이쿼리 자바스크립트 추가하기 -->

		<script src="./js/jquery.min.js"></script>

		<!-- Popper 자바스크립트 추가하기 -->

		<script src="./js/popper.min.js"></script>

		<!-- 부트스트랩 자바스크립트 추가하기 -->

		<script src="./js/bootstrap.min.js"></script>
</body>

</html>


