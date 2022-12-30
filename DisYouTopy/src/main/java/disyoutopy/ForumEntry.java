package disyoutopy;

import java.util.List;

public class ForumEntry {
	
	private String userID;
	private String question;
	private List<String> answers;

	
	
	
	public ForumEntry(String userID, String question, List<String> answers)
	{
		this.userID = userID;
		this.question = question;
		this.answers = answers;

	}
	
	

	public String getUserID()
	{
		return this.userID;
	}
	

	
	public String getQuestion()
	{
		return this.question;
	}
	

	public List<String> getAnswers()
	{
		return this.answers;
	}
	
	
	public void addAnswer(String answer)
	{
		
		this.answers.add(answer);
		
		
	}

	
	

}
