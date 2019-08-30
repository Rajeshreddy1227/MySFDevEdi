public class DBInsertDemo {
	Public static void demo()
    {
        list<customer__c> cust = new list <customer__c>();
        customer__c c = new Customer__c();
        c.name = 'XYZTest';
        c.Description__c = 'I am description';
        cust.add(c);
        insert cust;
        
        list<InvoiceA__c> inv = new list<InvoiceA__c>();
        InvoiceA__c Inv1 = new InvoiceA__c();
        Inv1.Name = 'Test';
        inv1.customer__C = c.id;
        inv.add(inv1);
        
        InvoiceA__c Inv2 = new InvoiceA__c();
        Inv2.Name = 'Test';
       // inv1.customer__C = c.id;
        inv.add(inv2);
        database.SaveResult[] sr1list =  database.insert(inv,true);
        for(database.SaveResult sr: sr1list )
        {
            if(sr.isSuccess())
            {
                System.debug('Successfully inserted Invoice. Invoice ID: ' + sr.getId());//Get the invoice id of inserted Account
            }
            else
            {
                for(Database.Error objErr : sr.getErrors()) 
                {
                    System.debug('The following error has occurred.');  //Printing error message in Debug log
                    System.debug(objErr.getStatusCode() + ': ' + objErr.getMessage());
                    System.debug('Invoice oject field which are affected by the error: ' + objErr.getFields());
           	 	}
            }
        }
    }
}