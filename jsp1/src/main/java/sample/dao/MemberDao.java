package sample.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.OracleUtility;
import sample.dto.MemberDto;

//DAO 에는 입력과 출력은 포함시키지 않습니다. 오직 어떤 형식의 데이터를 받아서
//어떤 SQL을 실행하여, 어떤 값을 리턴할 것인가를 중점을 두고 정의하면 됩니다.
//DTO는 데이터를 저장하는 목적의 클래스, DAO는 어떤 동작을 할것인지를 정의한 메소드만 있습니다
public class MemberDao {
	private static MemberDao dao = new  MemberDao();
	private MemberDao() {}

	public static MemberDao getMemberDao() {	//메소드 getInstance외에 내용을 알수 있는 이름으로 정하기
		return dao;
	}
	public int insert(MemberDto member) throws SQLException{
		Connection connection = OracleUtility.getConnection();
		
		String sql = "INSERT INTO MEMBER_tbl_02 \r\n"
				+ "	values(memtbl_seq.nextval,?, ?,?, sysdate,?, ?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ps.setString(1, member.getCustname());
		ps.setString(2, member.getPhone());
		ps.setString(3, member.getAddress());
		ps.setString(4, member.getGrade());
		ps.setNString(5, member.getCity());
		int result = ps.executeUpdate();
		
		ps.close();
		connection.close();
		return result;
		
	}
	public List<MemberDto> selectAll() throws SQLException{
		Connection connection = OracleUtility.getConnection();
		String sql = "select * from member_tbl_02";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		List<MemberDto> list = new ArrayList<>();
		while(rs.next()) {
			list.add(new MemberDto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getString(6), rs.getString(7)));
		}
		ps.close();
		connection.close();
		return list;
} 
	   public MemberDto selectOne(int custno) throws SQLException {      //수정할 데이터 가져오기
		      Connection conn = OracleUtility.getConnection();
		      String sql = "select * from MEMBER_TBL_02 where custno = ?";
		      PreparedStatement ps = conn.prepareStatement(sql);
		      ps.setInt(1,custno);
		      MemberDto result = null;
		      ResultSet rs = ps.executeQuery();
		      if(rs.next()) {
		         String custname = rs.getString(2);
		         String phone = rs.getString(3);
		         String address = rs.getString(4);
		         Date joindate = rs.getDate(5);
		         String grade = rs.getString(6);
		         String city = rs.getString(7);
		         result = new MemberDto(custno, custname, phone, address, joindate, grade, city);
		      }
		      return result;
		   }
	   
	   
	   
	public int update(MemberDto member) throws SQLException{
		Connection conn = OracleUtility.getConnection();
		String sql = "update member_tbl_02 set custno =?, custname = ? , phone =?, address =?,"
				+ "joindate =?, grade = ?,city = ?, where cuntno = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setInt(1, member.getCustno());
		ps.setString(2, member.getCustname());
		ps.setString(3, member.getPhone());
		ps.setString(4, member.getAddress());
		ps.setDate(5, member.getJoindate());
		ps.setString(6, member.getGrade());
		ps.setString(7, member.getCity());
		ps.setInt(8, member.getCustno());
		int result = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return result;
	
				
	}
}
