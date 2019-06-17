package evaluation;



import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;

public class EvaluationDAO {

	public int write(EvaluationDTO evaluationDTO) {
		String SQL = "INSERT INTO WRITING VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0);";

		PreparedStatement pstmt = null;
		Connection conn = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, evaluationDTO.getUserID());

			pstmt.setString(2, evaluationDTO.getPlayerName());

			pstmt.setString(3, evaluationDTO.getPosition());

			pstmt.setInt(4, evaluationDTO.getPlayYear());

			pstmt.setString(5, evaluationDTO.getSemester());

			pstmt.setString(6, evaluationDTO.getTextDivide());

			pstmt.setString(7, evaluationDTO.getWriteTitle());

			pstmt.setString(8, evaluationDTO.getWriteContent());

			pstmt.setString(9, evaluationDTO.getTotalScore());

			pstmt.setString(10, evaluationDTO.getBatting());

			pstmt.setString(11, evaluationDTO.getDefending());

			pstmt.setString(12, evaluationDTO.getRunning());

			return pstmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			try {

				if(pstmt != null) pstmt.close();

				if(conn != null) conn.close();

			} catch (Exception e) {

				e.printStackTrace();

			}

		}

		return -1;

	}
	public ArrayList<EvaluationDTO> getList(String textDivide, String searchType, String search, int pageNumber) {

		if(textDivide.equals("All")) {

			textDivide = "";
			

		}

		ArrayList<EvaluationDTO> evaluationList = null;
		String SQL = "";
		PreparedStatement pstmt = null;
		Connection conn = null;
		ResultSet rs = null;


		try {

			if(searchType.equals("Recent")) {

				SQL = "SELECT * FROM WRITING WHERE TextDivide LIKE ? AND CONCAT(playerName, position, writeTitle, writeContent) LIKE ? ORDER BY writeID DESC LIMIT " + pageNumber * 5 + ", " + pageNumber * 5 + 6;

			} else if(searchType.equals("Best")) {

				SQL = "SELECT * FROM WRITING WHERE TextDivide LIKE ? AND CONCAT(playerName, position, writeTitle, writeContent) LIKE ? ORDER BY likeCount DESC LIMIT " + pageNumber * 5 + ", " + pageNumber * 5 + 6;

			}

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, "%" + textDivide + "%");

			pstmt.setString(2, "%" + search + "%");

			rs = pstmt.executeQuery();

			evaluationList = new ArrayList<EvaluationDTO>();

			while(rs.next()) {

				EvaluationDTO evaluation = new EvaluationDTO(

					rs.getInt(1),

					rs.getString(2),

					rs.getString(3),

					rs.getString(4),

					rs.getInt(5),

					rs.getString(6),

					rs.getString(7),

					rs.getString(8),

					rs.getString(9),

					rs.getString(10),

					rs.getString(11),

					rs.getString(12),

					rs.getString(13),

					rs.getInt(14)

				);

				evaluationList.add(evaluation);

			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			try {

				if(rs != null) rs.close();

				if(pstmt != null) pstmt.close();

				if(conn != null) conn.close();

			} catch (Exception e) {

				e.printStackTrace();

			}

		}

		return evaluationList;

	}
}





