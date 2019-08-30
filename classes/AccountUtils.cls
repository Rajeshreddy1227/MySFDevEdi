public class AccountUtils {
    public static list<Account> accountsByState(string sState)
    {
        Account [] acc = new list <Account>();
        acc = [select id,name from Account where BillingState =:sState];
        return acc;
    }

}