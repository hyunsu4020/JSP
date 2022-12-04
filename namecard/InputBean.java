 package ch10.input;

 //패키지명은 ch10.input 입니다.
 // 클래스명은 InputBean 입니다.
 public class InputBean {  // 자바빈 클래스

  // 프로퍼티
  // 멤버 변수는 접근 제어자 private을 사용하여 정보에 직접 접근할 수 없도로 합니다.
 	private String name;
  private String university;
 	private String email;
 	private String tel;
  private String address;
  private String department;

  // 프로퍼티 값을 저장하고 얻어내는 setter/getter 메소드는 접근 제어자 public을 사용합니다.
  // set() 메소드 정의
  public void setName(String name) {
 		this.name = name;
 	}

  public void setUniversity(String university) {
 		this.university = university;
 	}

 	public void setEmail(String email) {
 		this.email = email;
 	}

 	public void setTel(String tel) {
 		this.tel = tel;
 	}

  public void setAddress(String address) {
    this.address = address;
  }

  public void setDepartment(String department) {
    this.department = department;
  }

 	public String getName() {
 		return name;
 	}

  // get() 메소드 정의
  public String getUniversity() {
    return university;
  }

 	public String getEmail() {
 		return email;
 	}

 	public String getTel() {
 		return tel;
 	}

  public String getAddress() {
 		return address;
 	}

  public String getDepartment() {
 		return department;
 	}

 }
