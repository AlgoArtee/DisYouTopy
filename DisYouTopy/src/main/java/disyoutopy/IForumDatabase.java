package disyoutopy;

import java.util.List;

public interface IForumDatabase {

	public void addEntry(ForumEntry e);
	
	public boolean removeEntry(String userID);
	
	public List<ForumEntry> getForumEntries();
	

}
