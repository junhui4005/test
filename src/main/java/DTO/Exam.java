package DTO;

public class Exam {

	private String sno;
	private int  ekor;
	private int emath;
	private int eeng;
	private int ehis;
	
	public Exam() {
		// TODO Auto-generated constructor stub
	}

	public Exam(String sno, int ekor, int emath, int eeng, int ehis) {
		super();
		this.sno = sno;
		this.ekor = ekor;
		this.emath = emath;
		this.eeng = eeng;
		this.ehis = ehis;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public int getEkor() {
		return ekor;
	}

	public void setEkor(int ekor) {
		this.ekor = ekor;
	}

	public int getEmath() {
		return emath;
	}

	public void setEmath(int emath) {
		this.emath = emath;
	}

	public int getEeng() {
		return eeng;
	}

	public void setEeng(int eeng) {
		this.eeng = eeng;
	}

	public int getEhis() {
		return ehis;
	}

	public void setEhis(int ehis) {
		this.ehis = ehis;
	}
	
	
	
}
