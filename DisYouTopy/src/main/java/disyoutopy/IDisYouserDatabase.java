package disyoutopy;

import java.util.List;

public interface IDisYouserDatabase {

	public void addDisYouser(DisYouser e);
	
	public boolean removeUser(String userID);
	
	public List<DisYouser> getDisYouserList();
	

}
