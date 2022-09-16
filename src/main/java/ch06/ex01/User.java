package ch06.ex01;

import java.time.LocalDate;

public class User {
	private int userId;
	private String userName;
	private LocalDate regDate;
	
	public User(int userId, String userName, LocalDate regDate) {
		this.userId = userId;
		this.userName = userName;
		this.regDate = regDate;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public LocalDate getRegDate() {
		return regDate;
	}

	public void setRegDate(LocalDate regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", regDate=" + regDate + "]";
	}
}
