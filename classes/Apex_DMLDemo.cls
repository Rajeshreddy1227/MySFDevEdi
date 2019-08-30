public class Apex_DMLDemo {
    Public Static void demo()
    {
        List<InvoiceA__c> invoice = [select id,name,Status__c from InvoiceA__c];
        List <InvoiceA__c> upd = new List<InvoiceA__c>();
        for(InvoiceA__c obj:invoice)
        {
            if(obj.Status__c !='Paid')
            {
                obj.Status__c = 'Paid';
                upd.add(obj);
            }
        }
        update upd;
    }
}