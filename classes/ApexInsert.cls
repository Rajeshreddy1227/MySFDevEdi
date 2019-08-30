public class ApexInsert {
    public static void demo()
    {
        Customer__c objcust = new Customer__c();
        objcust.name = 'Test ABC';
        //objcust.Active__C = 'N';
        insert objcust;
        InvoiceA__c objinv = new InvoiceA__c();
        objinv.AmountPaid__c = 2000;
        objinv.Customer__c = objcust.id;
        objinv.Description__c = 'This is added from Code';
        insert objinv;
    }

}