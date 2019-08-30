public class ApexTestSOSL {
    public static void testsosl()
    {
        Account a = new Account();
        a.Name = 'Test Accoun';
        a.Phone = '(225)555-8989';
        a.NumberOfEmployees = 10;
        a.BillingCity = 'Baton rogue';
        insert a;
        Id accid= a.Id;
        Contact c = new Contact();
        c.FirstName='Joseph';
    c.LastName='Smith';
    c.Phone='(225)555-8787';
    c.Email='jsmith@testaccount.com';
        c.AccountId = accid;
        insert c;
        
    }

}