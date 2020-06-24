package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public interface FootballDAO {
	Connection getConnection() throws SQLException;
	void closeAll(PreparedStatement ps, Connection conn) throws SQLException;
	void closeAll(ResultSet rs, PreparedStatement ps, Connection conn) throws SQLException;
	
	
	
	//회원가입 및 등록	
	void registerUser(UserVO vo) throws SQLException;
	void requestToJoin(PlayerInfoVO pVo, TeamMemberVO tVo) throws SQLException;
	void allowToJoin(PlayerInfoVO pVo, TeamMemberVO tVo) throws SQLException;
	void rejectToJoin(PlayerInfoVO pVo, TeamMemberVO tVo) throws SQLException;
	void makeTeam(TeamVO vo) throws SQLException;
	
	
	//검색
	ArrayList<UserVO> showAllMember() throws SQLException;
	UserVO findByUserId(String userId) throws SQLException;
	UserVO findByNickName(String nickName) throws SQLException;
	TeamVO findByTeamName(String teamName) throws SQLException;
	ArrayList<TeamVO> myTeamList(String userId) throws SQLException; 
	
	
	//전적조회
	ArrayList<MatchVO> matchHistory() throws SQLException;
	

	ArrayList<MatchVO> recommendMatch(String area) throws SQLException;
		
	
	
	
	
	//Business Logics
		//로그인
	UserVO login(String userId, String password) throws SQLException;
	ArrayList<MatchVO> recommendSquad(VoteVO vo) throws SQLException;
		
	
	void makeVote(VoteVO vVo, MatchVO mVo) throws SQLException;
	void insertVoteResult(VoteVO vVo) throws SQLException;
	void insertMatch(MatchVO mVo) throws SQLException;
	void insertMatchResult(MatchResultVO vo) throws SQLException;
	
	ArrayList<MatchVO> TeamSchedule(String teamId) throws SQLException;
	ArrayList<MatchVO> userSchedule(String userId) throws SQLException;
	
	//delete
	void deleteUser(String userId, String pass) throws SQLException;
	void deleteTeam(String teamId, String teamName) throws SQLException;
	
	//update
	void updateUser(UserVO uVo) throws SQLException;
	void updateTeam(TeamVO tVo) throws SQLException;
}
