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
			forumDatabase.addEntry(new ForumEntry ("cutie88", "What exactly is biohacking?",Arrays.asList("Depending on whom you ask, you’ll get a different definition of biohacking.", "N00b", "The attempt to manipulate your brain and body in order to optimize performance!")));
			forumDatabase.addEntry(new ForumEntry ("name", "Where do I start???",Arrays.asList()));
			forumDatabase.addEntry(new ForumEntry ("another_name", "What are some of your favorite biohacks/DIY?",Arrays.asList("Analysing my DNA!", "Secret! :P", "Nutritional Hacks!")));
			forumDatabase.addEntry(new ForumEntry ("mimi", "Where do I start???",Arrays.asList()));
			

		}
		
		return forumDatabase;
	}

	
	
	
	
	

}
