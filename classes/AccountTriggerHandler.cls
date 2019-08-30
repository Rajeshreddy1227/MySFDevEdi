public class AccountTriggerHandler {
	public static void CreateAccounts(List<Account> acc)
    {
        list <Account> al = new list<Account>();
        for(Account a:acc)
        {
            if(a.ShippingState  != a.BillingState)
            {
                a.ShippingState = a.BillingState;
              //  al.add(a);
            }
        }
    }
}