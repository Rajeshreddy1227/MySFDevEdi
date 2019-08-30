public class DeleteDemo {
	Public static void demo()
    {
        list <customer__c> custdelete = [select name from customer__c where name like 'Test ABC%' and name not in ('Test ABC')];
        delete custdelete;
        system.debug('The number of records delete are:'+custdelete.size());
    }
}