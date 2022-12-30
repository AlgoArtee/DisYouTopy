package disyoutopy;

import java.util.ArrayList;
import java.util.List;

public class DisYouserDatabase implements IDisYouserDatabase{
	
	private List<DisYouser> disYouserDatabase = new ArrayList<>();
	
	
	public void addDisYouser(DisYouser dy)
	{
		disYouserDatabase.add(dy);
	}
	
	
	public boolean removeUser(String userID)
	{
		boolean ret = false;
		
		for (DisYouser dy: disYouserDatabase)
		{
			if (dy.getUserID().equals(userID))
			{
				disYouserDatabase.remove(dy);
				ret=true;
				break;
			}
		}
		
		return ret;
	}
	
	
	
	public List<DisYouser> getDisYouserList()
	{
		return this.disYouserDatabase;
	}
	
	
	static IDisYouserDatabase dyDatabase;
	
	public static IDisYouserDatabase getDisYouserDatabase()
	{
		if(dyDatabase == null)
		{
			dyDatabase = new DisYouserDatabase();
			dyDatabase.addDisYouser(new DisYouser ("Kitty", "Quinn","Cathaven Megatropolis 42888", "kittyquinn@kittymail.com","08/02/1985","KittyQ","Puddin"));
			dyDatabase.addDisYouser(new DisYouser ("Kittylith", "Yum","Cathaven Megatropolis 42777", "kittylith@kittymail.com","08/02/1995","KittyLY","Meow"));
			dyDatabase.addDisYouser(new DisYouser ("Mewxy", "Net","Cathaven Megatropolis 42666", "mewxyn@kittymail.com","07/02/1985","MewxyN","Scratch"));
			dyDatabase.addDisYouser(new DisYouser ("Lya", "Sea","Cathaven Megatropolis 42333", "lyac@kittymail.com","08/02/1985","LyaC","Hiss"));
			dyDatabase.addDisYouser(new DisYouser ("SevenOf", "Nine","Cathaven Megatropolis 42424", "7o9@kittymail.com","08/02/1980","SevenO9","resistanceIsFutile"));
			dyDatabase.addDisYouser(new DisYouser ("Hax0r", "Anon","HereAndThere Megatropolis 00000", "throwawayemail@kittymail.com","08/02/1955","mad_scientist_h4x0r_88","beware_my_pippette123"));
		}
		
		return dyDatabase;
	}
	
	
	
	
	

}
