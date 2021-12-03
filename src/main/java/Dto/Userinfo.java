package Dto;

public class Userinfo {
	private String id,pw,name,sex, post,address,email;
	int p_number, age,category1,category2,category3;
	
	public String getId() {
		return id;
	}
	public Userinfo setId(String id) {
		this.id = id;
		return this;
	}
	public String getPw() {
		return pw;
	}
	public Userinfo setPw(String pw) {
		this.pw = pw;
		return this;
	}
	public String getName() {
		return name;
	}
	public Userinfo setName(String name) {
		this.name = name;
		return this;
	}
	public String getSex() {
		return sex;
	}
	public Userinfo setSex(String sex) {
		this.sex = sex;
		return this;
	}
	public String getPost() {
		return post;
	}
	public Userinfo setPost(String post) {
		this.post = post;
		return this;
	}
	public String getAddress() {
		return address;
	}
	public Userinfo setAddress(String address) {
		this.address = address;
		return this;
	}
	public String getEmail() {
		return email;
	}
	public Userinfo setEmail(String email) {
		this.email = email;
		return this;
	}
	public int getCategory1() {
		return category1;
	}
	public Userinfo setCategory1(int category1) {
		this.category1 = category1;
		return this;
	}
	public int getCategory2() {
		return category2;
	}
	public Userinfo setCategory2(int category2) {
		this.category2 = category2;
		return this;
	}
	public int getCategory3() {
		return category3;
	}
	public Userinfo setCategory3(int category3) {
		this.category3 = category3;
		return this;
	}
	public int getP_number() {
		return p_number;
	}
	public Userinfo setP_number(int p_number) {
		this.p_number = p_number;
		return this;
	}
	public int getAge() {
		return age;
	}
	public Userinfo setAge(int age) {
		this.age = age;
		return this;
	}
}
