package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.OracleUtility;
import sample.dto.MoneyDto;

public class MoneyDao {

	public List<MoneyDto> selectAll() throws SQLException{
		Connection conn = OracleUtility.getConnection();
		String sql = "select m.custno, m.custname, decode(grade,'A','VIP','B','일반','C','직원'), \"총 매출\" \r\n"
				+ "from member_tbl_02 m \r\n"
				+ "join (select custno,sum(price) as \"총 매출\" from money_tbl_02\r\n"
				+ "group by custno order by \"총 매출\" desc ) t on m.custno = t.custno";
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		List<MoneyDto> list = new ArrayList<>();
		while(rs.next()) {
			list.add(new MoneyDto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
			
		}
		ps.close();
		conn.close();
		return list;
		
	}

		
}

