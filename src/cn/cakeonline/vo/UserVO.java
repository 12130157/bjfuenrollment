package cn.cakeonline.vo;

public class UserVO {
	private int userId;
	private String username;
	private String password;
	private String nickname;
	private int gender;
	private String email;
	private int lastLoginAt;
	private String lastLoginIp;
	private double balance;

	public UserVO(int userId, String username, String password,
			String nickname, int gender, String email, int lastLoginAt,
			String lastLoginIp, double balance) {
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.gender = gender;
		this.email = email;
		this.lastLoginAt = lastLoginAt;
		this.lastLoginIp = lastLoginIp;
		this.balance = balance;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getLastLoginAt() {
		return lastLoginAt;
	}

	public void setLastLoginAt(int lastLoginAt) {
		this.lastLoginAt = lastLoginAt;
	}

	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}
}
