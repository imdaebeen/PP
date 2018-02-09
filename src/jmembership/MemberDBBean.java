package jmembership;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDBBean {
	private static MemberDBBean instance = new MemberDBBean();
	
	private MemberDBBean(){
		
	}
	public static MemberDBBean getInstance() {
		return instance;
	}
	public static Connection getConnection(){
		Connection con = null;
		try {
			String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbId = "scott";
			String dbPass = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}
	public void close(Connection con, ResultSet rs , PreparedStatement pstmt) {
		if(rs !=null )
			try {
				rs.close();
			}catch (SQLException ex) {
				// TODO: handle exception
			}
		if(pstmt !=null )
			try {
				pstmt.close();
			}catch (SQLException ex) {
				// TODO: handle exception
			}
		if(con !=null )
			try {
				con.close();
			}catch (SQLException ex) {
				// TODO: handle exception
			}
	}
	public void insertArticle(MemberDataBean article) {
		String sql="";
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int number = 0;
		
		try {
		pstmt = con.prepareStatement("select BoardSer.nextval from dual");
		rs = pstmt.executeQuery();
		if(rs.next()) 
			number = rs.getInt(1)+1;
		else 
			number = 1;
		
		sql = "insert into memberList(num,memberid,passwd,name,email,phone) values(?,?,?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, number);
		pstmt.setString(2, article.getMemberid());
		pstmt.setString(3, article.getPasswd());
		pstmt.setString(4, article.getName());
		pstmt.setString(5, article.getEmail());
		pstmt.setString(6, article.getPhone());
		pstmt.executeUpdate();
		
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}finally {
		close(con,rs,pstmt);
		}
	}
	public int getArticleCount(String boardid) {
		int x=0;
		String sql="select nvl(count(*),0) from memberList where boardid = ?";
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, boardid);
		
		rs=pstmt.executeQuery();
		if(rs.next()){			x=rs.getInt(1);			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			close(con,rs,pstmt);
		}
		System.out.println(x);
		return x;
	}
	
	public List getArticles(int startRow,int endRow,String boardid) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List articleList =null;
		String sql="";
		try {
			con=getConnection();
			sql="select * from(" 
			+ "select ROWNUM rum,b.* from(" 
			+ "select a.* from memberList a where boardid = ?) b)" 
			+ "where rum BETWEEN ? and ?";
		
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,boardid);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				articleList = new ArrayList();
				do {
					MemberDataBean article = new MemberDataBean();
					article.setNum(rs.getInt("num"));
					article.setMemberid(rs.getString("memberid"));
					article.setName(rs.getString("name"));
					article.setEmail(rs.getString("email"));
					article.setPhone(rs.getString("phone"));
					
					articleList.add(article);
				}while(rs.next());
			}
			
			}catch (Exception e) {
				// TODO: handle exception
			}finally {
				close(con,rs,pstmt);
			}
			return articleList;
		}
	public MemberDataBean getArticles(int num,String boardid) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberDataBean article =null;
		String sql="";
		try {
			con=getConnection();
			sql="select * from memberList where num =? and boardid = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, boardid);
			rs=pstmt.executeQuery();
					
			if(rs.next()) {
				article = new MemberDataBean();
				article.setNum(rs.getInt("num"));
				article.setMemberid(rs.getString("memberid"));
				article.setPasswd(rs.getString("passwd"));
				article.setName(rs.getString("name"));
				article.setEmail(rs.getString("email"));
				article.setPhone(rs.getString("phone"));
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			close(con, rs, pstmt);
		}
		return article;
	}
public int updateArticle(MemberDataBean article) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		int chk=0;
		
		try {
		con=getConnection();
		String sql = "update memberList set memberid=?,name=?,email=?,phone=? where num=? and passwd = ?";	
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, article.getMemberid());
		pstmt.setString(2, article.getName());
		pstmt.setString(3, article.getEmail());
		pstmt.setString(4, article.getPhone());
		pstmt.setInt(5, article.getNum());
		pstmt.setString(6, article.getPasswd());

		chk=pstmt.executeUpdate();
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally { 
			close(con, null, pstmt);
		}
		return chk;
	}
	public int deleteArticle(int num, String passwd,String boardid) throws Exception{
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql="delete from memberList where num=? and passwd=?";
	int x = -1; 
	try {
		con = getConnection();
	pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, passwd);
	x=pstmt.executeUpdate();
	}catch (Exception ex) {
		// TODO: handle exception
		ex.printStackTrace();
	}finally {
		close(con, rs, pstmt);
	}
	return x;
}
}
	