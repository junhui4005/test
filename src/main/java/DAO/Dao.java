package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.Exam;
import DTO.Student;

public class Dao {

	PreparedStatement ps;
	ResultSet rs;
	Connection con;
	
	public Dao(){
		try { 
			this.con=getConnection();
			}catch(Exception e) {System.out.println(e);}
		}
	
	public static Connection getConnection() throws Exception{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		return con;
	}
	
	public ArrayList<Student> getstudentlist(){
		 ArrayList<Student> getstudentlist = new ArrayList<Student>();
		try {
			String sql  = "select * from student_tbl_03";
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				Student student = new Student(
						rs.getString(1),rs.getString(2)
						,rs.getString(3),rs.getString(4)
						,rs.getString(5)
						);
				getstudentlist.add(student);
			}
			return getstudentlist;
		}catch(Exception e) {}
		return null;
	}
	
	
	
	public boolean addexam(Exam exam) {
		try {
			String  sql = "insert into exam_tbl_03(sno,ekor,emath,eeng,ehist) values(?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, exam.getSno());
			ps.setInt(2, exam.getEkor());
			ps.setInt(3, exam.getEmath());
			ps.setInt(4, exam.getEeng());
			ps.setInt(5, exam.getEhis());
			ps.executeUpdate();
			return true;
		}catch(Exception e) {System.out.println(e);}
		return false;
	}
	
	public void getexamlist() {
		try {
		String sql = "select sur";
		}catch(Exception e) {}
		return null;
	}
	
	
}
