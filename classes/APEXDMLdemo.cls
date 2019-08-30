public class APEXDMLdemo {
 /*   public static void demo()
    {
        PrivateObject__c	 p = new PrivateObject__c(POName__c = 'T-0008');
        Insert p;
    }*/
    public static void demo()
    {
        PrivateObject__c	[] p = [select id,POName__c,Description__c from PrivateObject__c where POName__c= 'POAPEX-0008'];
        for(PrivateObject__c i:p)
        {
            i.Description__c = 'This is updated from Apex code';
            
        }
         PrivateObject__c	 p1 = new PrivateObject__c(POName__c = 'T-0008');
        p.add(p1);
        upsert p;
    }
}