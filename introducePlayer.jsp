<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

	<div class="card bg-light mt-3">

		<div class="card-header bg-light">

			<div class="row">

				<div class="col-8 text-left">
					Cody Bellinger&nbsp;<small>Out Fielder</small>
				</div>

				<div class="col-4 text-right"></div>

			</div>

		</div>

		<div class="card-body">

			<h5 class="card-title">

				<small> 별명 : Belli<br> 출생 : 1995-07-13 (Scottsdale, AZ,
					USA)<br> 드래프트 : 2013, Round 4, LAD<br> 출신 고등학교 :
					Hamilton, Chandler, AZ<br> 프로 첫 출장 : 2017-04-25
				</small>

			</h5>


			<div class="row">

				<div class="col-9 text-left">

					타율 <span style="color: blue;">.281</span> 홈런 <span
						style="color: blue;">87</span> 타점 <span style="color: blue;">231</span>
					도루 <span style="color: blue;">32</span> OPS <span
						style="color: blue;">.925</span> 연봉 <span style="color: blue;">$605,000</span>

				</div>

				<div class="col-3 text-right"></div>

			</div>

		</div>

	</div>

	<div class="card bg-light mt-3">

		<div class="card-header bg-light">

			<div class="row">

				<div class="col-8 text-left">
					Justin Tuner&nbsp;<small>Third Baseman</small>
				</div>

				<div class="col-4 text-right"></div>

			</div>

		</div>

		<div class="card-body">

			<h5 class="card-title">

				<small> 별명 : Redturn2 <br> 출생 : 1984-11-23 (Long Beach,
					CA, USA)<br> 드래프트 : 2006, Round 7, CIN<br> 출신 대학교 : Cal
					State Fullerton<br> 프로 첫 출장 : 2009-09-08
				</small>

			</h5>



			<div class="row">

				<div class="col-9 text-left">

					타율 <span style="color: blue;">.293</span> 홈런 <span
						style="color: blue;">100</span> 타점 <span style="color: blue;">433</span>
					도루 <span style="color: blue;">33</span> OPS <span
						style="color: blue;">.829</span> 연봉 <span style="color: blue;">$2,500,000</span>
				</div>

				<div class="col-3 text-right"></div>

			</div>

		</div>

	</div>

	<div class="card bg-light mt-3">

		<div class="card-header bg-light">

			<div class="row">

				<div class="col-8 text-left">
					Clayton Kershaw&nbsp;<small>Pitcher</small>
				</div>

				<div class="col-4 text-right"></div>

			</div>

		</div>

		<div class="card-body">

			<h5 class="card-title">

				<small> 별명 : Kersh <br> 출생 : 1988-03-19 (Dallas, TX,
					USA) <br> 드래프트 : 2006, Round 1, LAD <br> 출신 고등학교 :
					Highland Park, Dallas, TX <br> 프로 첫 출장 : 2008-05-25
				</small>

			</h5>



			<div class="row">

				<div class="col-9 text-left">

					승리 <span style="color: blue;">159</span> 방어율 <span
						style="color: blue;">2.42</span> 패배 <span style="color: blue;">70</span>
					삼진 <span style="color: blue;">2342</span> WHIP <span
						style="color: blue;">1.01</span> 연봉 <span style="color: blue;">$31,000,000</span>
				</div>

				<div class="col-3 text-right"></div>

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
