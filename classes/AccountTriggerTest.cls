@isTest
public class AccountTriggerTest {
@isTest static void insertrec()
    {
        list <Account> acc = new List <Account>();
        for(integer i=0;i<200;i++)
        {
            Account a = new Account(name = 'TestRecord'+i,BillingState = 'CA');
            acc.add(a);
        }
        Test.startTest();
            insert acc;
        Test.stopTest();
        list <Account> accts = new list <Account>();
        for(Account listac: accts)
        {
            System.assertEquals('CA', listac.ShippingState, 'ERROR');
        }
    }
}