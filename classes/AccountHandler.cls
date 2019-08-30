public class AccountHandler 
{
	public static Account insertNewAccount(string Accname)
    {
        try{
            Account acc = new Account(Name = Accname);
            insert acc;
            //system.debug(acc);
           return acc;
            }
        catch(DMLException e)
        {
            return null;
        }
    }
}