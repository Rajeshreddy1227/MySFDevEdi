public class InsertDemo1 {
    public static void demo()
    {
        PrivateObject__c p = new PrivateObject__c(POName__c = 'POAPEX-0009');
        PrivateObject__c p1 = new PrivateObject__c(POName__c = 'POAPEX-0010');
        PrivateObject__c p2= new PrivateObject__c(POName__c = 'POAPEX-0011');
        PrivateObject__c p3 = new PrivateObject__c(POName__c = 'POAPEX-0012');
        list <PrivateObject__c> po= new List<PrivateObject__c>();
        po.add(p);
        po.add(p1);
        po.add(p2);
        po.add(p3);
        insert po;
    }
}