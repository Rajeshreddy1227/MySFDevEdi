public class SOQLList {
    public static void listdemo(){
        list<Account> acct = new list<Account>();
        acct = [select name from Account limit 10];
        system.debug('Accounts=='+acct);
    }
}