package evaluation;

public class EvaluationDTO {
	int writeID;
	String userID;
	String playerName;
	String position;
	int playYear;
	String semester;
	String textDivide;
	String writeTitle;
	String writeContent;
	String totalScore;
	String batting;
	String defending;
	String running;
	int likeCount;
	public int getWriteID() {
		return writeID;
	}
	public void setWriteID(int writeID) {
		this.writeID = writeID;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getPlayYear() {
		return playYear;
	}
	public void setPlayYear(int playYear) {
		this.playYear = playYear;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getTextDivide() {
		return textDivide;
	}
	public void setTextDivide(String textDivide) {
		this.textDivide = textDivide;
	}
	public String getWriteTitle() {
		return writeTitle;
	}
	public void setWriteTitle(String writeTitle) {
		this.writeTitle = writeTitle;
	}
	public String getWriteContent() {
		return writeContent;
	}
	public void setWriteContent(String writeContent) {
		this.writeContent = writeContent;
	}
	public String getTotalScore() {
		return totalScore;
	}
	public void setTotalScore(String totalScore) {
		this.totalScore = totalScore;
	}
	public String getBatting() {
		return batting;
	}
	public void setBatting(String batting) {
		this.batting = batting;
	}
	public String getDefending() {
		return defending;
	}
	public void setDefending(String defending) {
		this.defending = defending;
	}
	public String getRunning() {
		return running;
	}
	public void setRunning(String running) {
		this.running = running;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public EvaluationDTO() {
	}

	public EvaluationDTO(int writeID, String userID, String playerName, String position, int playYear, String semester,
			String textDivide, String writeTitle, String writeContent, String totalScore, String batting,
			String defending, String running, int likeCount) {
		super();
		this.writeID = writeID;
		this.userID = userID;
		this.playerName = playerName;
		this.position = position;
		this.playYear = playYear;
		this.semester = semester;
		this.textDivide = textDivide;
		this.writeTitle = writeTitle;
		this.writeContent = writeContent;
		this.totalScore = totalScore;
		this.batting = batting;
		this.defending = defending;
		this.running = running;
		this.likeCount = likeCount;
	}
	
}
