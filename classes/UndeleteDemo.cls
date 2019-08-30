public class UndeleteDemo {
    Public static void demo()
    {
        list <Customer__c> c = [select id from Customer__c where name like 'Test%' ALL ROWS];
        undelete c;
        system.debug('Undelete records are:'+c.size());
    }
}