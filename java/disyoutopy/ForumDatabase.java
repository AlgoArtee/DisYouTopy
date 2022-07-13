package disyoutopy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ForumDatabase implements IForumDatabase{
	
	private List<ForumEntry> forumEntries = new ArrayList<>();
	
	
	public void addEntry(ForumEntry e)
	{
		forumEntries.add(e);
	}
	
	
	public boolean removeEntry(String userID)
	{
		boolean ret = false;
		
		for (ForumEntry e: forumEntries)
		{
			if (e.getUserID().equals(userID))
			{
				forumEntries.remove(e);
				ret=true;
				break;
			}
		}
		
		return ret;
	}
	
	
	
	public List<ForumEntry> getForumEntries()
	{
		return this.forumEntries;
	}
	
	
	static IForumDatabase forumDatabase;
	
	public static IForumDatabase getIForumDatabase()
	{
		if(forumDatabase == null)
		{
			forumDatabase = new ForumDatabase();
			forumDatabase.addEntry(new ForumEntry ("1", "Why?",Arrays.asList("Answer", "Answer", "Answer")));
			forumDatabase.addEntry(new ForumEntry ("2", "Who?",Arrays.asList("Answer1", "Answer1", "Answer1")));
			forumDatabase.addEntry(new ForumEntry ("1", "Where?",Arrays.asList("Answer2", "Answer2", "Answer2")));
			

		}
		
		return forumDatabase;
	}


	@Override
	public List<ForumEntry> getEntries() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	

}
