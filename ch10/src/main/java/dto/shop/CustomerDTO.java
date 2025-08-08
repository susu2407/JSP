package dto.shop;



public class CustomerDTO {

	private String cid;		// 아이디
	private String name;	// 이름
	private String hp;		// 휴대폰
	private String address;	// 주소
	private String rdate;	// 등록일
	
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRdate() {
		return rdate.substring(0, 10);
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	@Override
	public String toString() {
		return "CustomerDTO [cid=" + cid + ", name=" + name + ", hp=" + hp + ", address=" + address + ", rdate=" + rdate
				+ "]";
	}
	
	
	
	
}
