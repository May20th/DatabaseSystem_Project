<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="evaluation.EvaluationDTO"%>

<%@ page import="evaluation.EvaluationDAO"%>

<%@ page import="java.io.PrintWriter"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userID = null;

	if (session.getAttribute("userID") != null) {

		userID = (String) session.getAttribute("userID");

	}

	if (userID == null) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('로그인을 해주세요.');");

		script.println("location.href = 'userLogin.jsp'");

		script.println("</script>");

		script.close();

		return;

	}

	request.setCharacterEncoding("UTF-8");

	String playerName = null;
	String position = null;
	int playYear = 0;
	String semester = null;
	String textDivide = null;
	String writeTitle = null;
	String writeContent = null;
	String totalScore = null;
	String batting = null;
	String defending = null;
	String running = null;

	if (request.getParameter("playerName") != null) {

		playerName = (String) request.getParameter("playerName");

	}

	if (request.getParameter("position") != null) {

		position = (String) request.getParameter("position");

	}

	if (request.getParameter("playYear") != null) {
		try {
			playYear = Integer.parseInt(request.getParameter("playYear"));
		} catch (Exception e) {
			System.out.println("강의 연도 데이터 오류");
		}
	}

	if (request.getParameter("semester") != null) {

		semester = (String) request.getParameter("semester");

	}

	if (request.getParameter("textDivide") != null) {

		textDivide = (String) request.getParameter("textDivide");

	}

	if (request.getParameter("writeTitle") != null) {

		writeTitle = (String) request.getParameter("writeTitle");

	}

	if (request.getParameter("writeContent") != null) {

		writeContent = (String) request.getParameter("writeContent");

	}

	if (request.getParameter("totalScore") != null) {

		totalScore = (String) request.getParameter("totalScore");

	}

	if (request.getParameter("batting") != null) {

		batting = (String) request.getParameter("batting");

	}

	if (request.getParameter("defending") != null) {

		defending = (String) request.getParameter("defending");

	}

	if (request.getParameter("running") != null) {

		running = (String) request.getParameter("running");

	}

	if (playerName == null || position == null || playYear == 0 || semester == null) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('입력이 안 된 사항이 있습니다.');");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}

	else {
		EvaluationDAO evaluationDAO = new EvaluationDAO();

		int result = evaluationDAO.write(new EvaluationDTO(0, userID, playerName, position, playYear, semester,
				textDivide, writeTitle, writeContent, totalScore, batting, defending, running, 0));

		if (result == -1) {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('평가 등록에 실패했습니다.');");

			script.println("history.back();");

			script.println("</script>");

			script.close();

		} else {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("location.href = 'index.jsp';");

			script.println("</script>");

			script.close();

			return;

		}

	}
%>





