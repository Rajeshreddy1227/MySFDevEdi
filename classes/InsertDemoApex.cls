public class InsertDemoApex {

    Public static void display()
    {
        PrivateObject__c	 p = new PrivateObject__c(POName__c = 'POAPEX-0008');
        Insert p;
        PrivateObject__c  p2 = [select POName__c from PrivateObject__c where POName__c like 'POAPEX-000%' limit 1];
        try{
            string s =p2.Description__c;}
        catch(sObjectException e)
        {
            system.debug('Exception Message'+e.getMessage());
        }
        
    }
}