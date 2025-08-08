package dao;

import java.util.ArrayList;
import java.util.List;

import dto.User1DTO;
import util.DBHelper;

public class User1DAO extends DBHelper {

// 싱글톤
	// 1. 유일한(final) 객체 생성(new User1DAO()), INSTANCE는 변수 이름(관례상 싱글톤 객체 이름은 대문자)
	private static final User1DAO INSTANCE = new User1DAO();
	
	// 2. 생성자를 private -> 외부에서 new 금지
	private User1DAO() {}
	
	// 3. 유일한 객체를 반환
	public static User1DAO getInstance() {
		return INSTANCE;
	}
	
	// DBCP(데이터베이스 커넥션 풀)이름을 상수로 저장.
	private final String DBCP = "jdbc/studydb";
	
// 기본 CRUD 메서드
	// C-등록(INSERT)
	public void insertUser1(User1DTO dto) {
		
		try {
			
			conn = getConnection(DBCP);
			
			String sql = "INSERT INTO user1 values (?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getUid());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getHp());
			psmt.setInt(4, dto.getAge());			
			psmt.executeUpdate();
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}		
		
	}
	
	//R-조회(SELECT)
	public User1DTO selectUser1(String uid) {
		return null;
	}
	
	//R-전체조회(SELECT ALL) - LIST
	public List<User1DTO> selectAllUser1() {
		
		List<User1DTO> dtoList = new ArrayList<User1DTO>();
		
		try {			
			conn = getConnection(DBCP);
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery("select * from user1");
			
			while(rs.next()) {
				User1DTO dto = new User1DTO();
				dto.setUid(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setHp(rs.getString(3));
				dto.setAge(rs.getInt(4));				
				dtoList.add(dto);
			}
			closeAll();		
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}
	
	//U-수정(UPDATE)
	public void updateUser1(User1DTO dto) {
		
	}
	
	//D-삭제(DELETE)
	public void deleteUser1(String uid) {
		
	}
}
