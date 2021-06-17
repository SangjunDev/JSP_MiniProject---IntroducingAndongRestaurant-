package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import member.Member;


public class MemberDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public MemberDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB ���� ���� : " + ex);
			return;
		}
	}

	public void Close() { //���� ����
		try {
			con.close();
		} catch (Exception ex) {
			System.out.println("DB���� ��ü ����: " + ex);	

		}
	}

	// �α���
	public boolean LoginChk(String id, String pw) {
		String sql = "SELECT MEMBER_ID FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_PW = ?";
		boolean result = false;
		int count = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id); // 1��° ?�� id�� ����
			pstmt.setString(2, pw); // 2��° ?�� pw�� ����
			rs = pstmt.executeQuery(); // select �� ��� ���
			while (rs.next()) { // ����� 1���� ������� �����
				count++;
			} // �޾ƿ� ����� 0 ���� �߸� �Է�ó��
			if (count == 0) {
				result = false; // �α��� ����
			} else if (count == 1) { // ����1���� �α��� ����
				result = true;
			}
		} catch (Exception ex) {
			System.out.println("�α��� ����: " + ex);	

		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return result;
	}
	
	// ȸ������
	public boolean joinMember(Member member) {
		String sql = "INSERT INTO MEMBER(MEMBER_ID, MEMBER_NAME, MEMBER_PW, MEMBER_EMAIL, MEMBER_PHONE, MEMBER_GENDER, MEMBER_ADDRESS)"
				+ " VALUES(?, ?, ?, ?, ?, ?,?)";
		boolean result = false;
		try {
			
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, member.getMEMBER_ID()); //?�� �� ���� ...
		pstmt.setString(2, member.getMEMBER_NAME());
		pstmt.setString(3, member.getMEMBER_PW());
		pstmt.setString(4, member.getMEMBER_EMAIL());
		pstmt.setString(5, member.getMEMBER_PHONE());
		pstmt.setString(6, member.getMEMBER_GENDER());
		pstmt.setString(7, member.getMEMBER_ADDRESS());
		pstmt.executeUpdate(); //insert/update �� ��� ��� //update�� resultset ���x
		
		result = true;
		}catch(Exception ex) {
			System.out.println("JoinMember: " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return result;
	}
	
	// idã��
	public String FindId(String id, String phone) {
		String sql = "SELECT MEMBER_ID FROM MEMBER WHERE MEMBER_NAME = ? AND MEMBER_PHONE = ?";
		boolean result = false;
		String returnId = null; //�ɹ� ������ ��� ��
		int count = 0;
		try {
		pstmt = con.prepareStatement(sql);
	    pstmt.setString(1, id); //1��° ?�� id�� ����
	    pstmt.setString(2, phone); //2��° ?�� phone�� ����
	    ResultSet rs = pstmt.executeQuery(); //select �� ��� ���
	    while(rs.next()){ //����� 1���� ������� �����
	        count++;
	        returnId= rs.getString(1);
	    } //�޾ƿ� ����� 0 ���� �߸� �Է�ó��
	    if(count ==0){ //ã�� ����� ���� ���
	    	returnId = null;
	    }
		}catch(Exception ex) {
			System.out.println("JoinMember: " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return returnId;
	}
	
	// pwã��
	public String FindPw(String id, String name, String email) {
		String sql = "SELECT MEMBER_PW FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_NAME = ? AND MEMBER_EMAIL = ?";
		String pw=null;
		try {
			pstmt = con.prepareStatement(sql);
		    pstmt.setString(1, id);
		    pstmt.setString(2, name); 
		    pstmt.setString(3, email); 
		    ResultSet rs = pstmt.executeQuery(); //select �� ��� ���
		    
		    while(rs.next()) { //���� ���� ��� pw�� ����
		    	pw = rs.getString(1);
		    }
		}catch(Exception ex) {
			System.out.println("FindPw: " + ex);
		}finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return pw;
	}

	
	// ���� ����
	public Member getDetailMember(String id){
		String sql="SELECT * FROM MEMBER WHERE MEMBER_ID=?";
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			rs.next();
			
			Member mb=new Member();
			mb.setMEMBER_ID(rs.getString("MEMBER_ID"));
			mb.setMEMBER_PW(rs.getString("MEMBER_PW"));
			mb.setMEMBER_NAME(rs.getString("MEMBER_NAME"));
			mb.setMEMBER_GENDER(rs.getString("MEMBER_GENDER"));
			mb.setMEMBER_EMAIL(rs.getString("MEMBER_EMAIL"));
			mb.setMEMBER_EMAIL(rs.getString("MEMBER_PHONE"));
			
			return mb;
		}catch(Exception ex){
			System.out.println("getDeatilMember ����: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		
		return null;
	}
	
	// ���̵� ����
	public boolean deleteMember(String id){
		String sql="DELETE FROM MEMBER WHERE MEMBER_ID=?";
		int result=0;
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			result=pstmt.executeUpdate();
			
			if(result!=0){
				return true;
			}
		}catch(Exception ex){
			System.out.println("deleteMember ����: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		
		return false;
	}
	
	public List getMemberList(){
		String sql="SELECT * FROM MEMBER";
		List memberlist=new ArrayList();
		
		try{
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				Member mb=new Member();
				mb.setMEMBER_ID(rs.getString("MEMBER_ID"));
				mb.setMEMBER_PW(rs.getString("MEMBER_PW"));
				mb.setMEMBER_NAME(rs.getString("MEMBER_NAME"));
				mb.setMEMBER_GENDER(rs.getString("MEMBER_GENDER"));
				mb.setMEMBER_EMAIL(rs.getString("MEMBER_EMAIL"));
				mb.setMEMBER_PHONE(rs.getString("MEMBER_PHONE"));
				mb.setMEMBER_ADDRESS(rs.getString("MEMBER_ADDRESS"));
				memberlist.add(mb);
			}
			
			return memberlist;
		}catch(Exception ex){
			System.out.println("getDeatilMember ����: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
}
