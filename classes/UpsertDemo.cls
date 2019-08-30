public class UpsertDemo {
	public  void demo()
    {
        list <customer__c> custUps = new list <customer__c>();
        customer__c c = [select ExternalId__c,name,Description__c,Status__c from customer__c where ExternalId__c = '1234'];
        c.Description__c = 'This is an update from Apex Code';
        c.Status__c = 'Paid';
        custUps.add(c);
        for(integer i=1;i<=10;i++)
        {
            customer__c c1 = new customer__c(name = 'Test ABC'+i,ExternalId__c = '1234'+i);
            custUps.add(c1);
        }
        upsert custUps;
    }
}