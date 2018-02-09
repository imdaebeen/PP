package jmembership;

public class MemberDataBean {
	private int num;
	private String memberid;
	private String passwd;
	private String name;
	private String email;
	private String phone;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "memberDataBean [num=" + num + ", memberid=" + memberid + ", passwd=" + passwd + ", name=" + name
				+ ", email=" + email + ", phone=" + phone + "]";
	}
	
}
