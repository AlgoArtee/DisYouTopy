package disyoutopy;

public class DisYouser {

	private String fname;
	private String lname;
	private String address;
	private String email;
	private String birthdate;
	private String userID;
	private String password;
	
	
	
	public DisYouser(String fname, String lname, String address, String email,String birthdate, String userID, String password)
	{
		this.fname = fname;
		this.lname = lname;
		this.address = address;
		this.email = email;
		this.birthdate = birthdate;
		this.userID = userID;
		this.password = password;
		
	}
	
	
	public String getFname()
	{
		return this.fname;
	}
	
	public void setFname(String fname)
	{
		this.fname = fname;
	}
	
	public String getLname()
	{
		return this.lname;
	}
	
	public void setLname(String lname)
	{
		this.lname = lname;
	}
	
	public String getAddress()
	{
		return this.address;
	}
	
	public void setAddress(String address)
	{
		this.address = address;
	}
	
	
	public String getEmail()
	{
		return this.email;
	}
	
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public String getBirthdate()
	{
		return this.birthdate;
	}
	
	public void setBirthdate(String birthdate)
	{
		this.birthdate = birthdate;
	}
	
	public String getUserID()
	{
		return this.userID;
	}
	
	public void setUserID(String userID)
	{
		this.userID = userID;
	}
	
	public String getPassword()
	{
		return this.password;
	}
	
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	
	
	
	
}
