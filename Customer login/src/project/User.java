package project;

public class User {
	private String name;
	private int id;
	private String email;
	private String mobileNumber;
	private String answer;
	private String password;
	
	public User(String name, int id, String email, String mobileNumber, String answer, String password) {
		super();
		this.name = name;
		this.id = id;
		this.email = email;
		this.mobileNumber = mobileNumber;
		this.answer = answer;
		this.password = password;
	}

	public String getName() {
		return name;
	}
	
	public int getId() {
		return id;
	}
	
	public String getEmail() {
		return email;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public String getAnswer() {
		return answer;
	}

	public String getPassword() {
		return password;
	}
		
}
