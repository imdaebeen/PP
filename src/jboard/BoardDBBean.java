package jboard;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jboard.BoardDataBean;
import jmembership.MemberDataBean;



public class BoardDBBean {
	private static BoardDBBean instance = new BoardDBBean();
	
	public BoardDBBean() {
		// TODO Auto-generated constructor stub
	}
	public static BoardDBBean getInstance() {
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
	public void insertArticle(BoardDataBean article) {
		String sql="";
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int number = 0;
		
		try {
			pstmt = con.prepareStatement("select FaqSer.nextval from dual");
			rs = pstmt.executeQuery();
			if(rs.next()) 
				number = rs.getInt(1)+1;
			else 
				number = 1;
			
			sql = "insert into boardfaq(num,boardid,subject,content,reg_date,readcount,passwd) values(?,?,?,?,sysdate,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setString(2, article.getBoardid());
			pstmt.setString(3, article.getSubject());
			pstmt.setString(4, article.getContent());
			pstmt.setInt(5, article.getReadcount());
			pstmt.setString(6, article.getPasswd());
			pstmt.executeUpdate();
			System.out.println(article);
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}finally {
		close(con,rs,pstmt);
		}
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
			+ "select a.* from boardfaq a where boardid = ? order by num desc) b)" 
			+ "where rum BETWEEN ? and ?";
		
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,boardid);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				articleList = new ArrayList();
				do {
					BoardDataBean article = new BoardDataBean();
					article.setNum(rs.getInt("num"));
					article.setSubject(rs.getString("subject"));
					article.setContent(rs.getString("content"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));	
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
	public int getArticleCount(String boardid) {
		int x=0;
		String sql="select nvl(count(*),0) from boardfaq where boardid = ?";
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
	public BoardDataBean getArticles(int num,String boardid,String chk) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardDataBean article =null;
		String sql="";
		try {
			con=getConnection();
			
			if(chk.equals("content")) {
			sql="update boardfaq set readcount=readcount+1 where num = ? and boardid = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, boardid);
			pstmt.executeUpdate();
			
			}
			sql="select * from boardfaq where num =? and boardid = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, boardid);
			rs=pstmt.executeQuery();
					
			if(rs.next()) {
				article = new BoardDataBean();
				article.setNum(rs.getInt("num"));
				article.setSubject(rs.getString("subject"));
				article.setContent(rs.getString("content"));
				article.setReadcount(rs.getInt("readcount"));
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			close(con, rs, pstmt);
		}
		return article;
	}
public int updateArticle(BoardDataBean article) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		int chk=0;
		
		try {
		con=getConnection();
		String sql = "update boardfaq set subject=?,content=?,reg_date=sysdate where num=?";	
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, article.getSubject());
		pstmt.setString(2, article.getContent());
		pstmt.setInt(3, article.getNum());
		
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
	String sql="delete from boardfaq where num=? and passwd=?";
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
