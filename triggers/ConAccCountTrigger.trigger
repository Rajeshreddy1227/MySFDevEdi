trigger ConAccCountTrigger on Contact (after insert,before delete,before update) {
 /*   	integer i=0;
    	set<id> AccId = new set<id>();
    	list<Account> acc = new list <Account>();
    	//map<id,Account> accmap = new map<id,Account>();
        if(trigger.isInsert){
        for(contact con: Trigger.new) {
            if(con.AccountId!=null && con.AccountId!=''){
               AccId.add(con.AccountId);
            }
        }
        if(AccId.size()>0)
        {
            map<id,Contact> accmap = new map<id,Contact>([select id,name from Contact where AccountId=:AccId]);
            for(contact con: Trigger.new) {
                if(accmap.containsKey(con.AccountId))
                {
                	i+=1;
                }
            }
            
        }
    }*/
    //Trigger to update the count of contacts for an account
    list<Id> accids = new list<Id>();
    if(trigger.isInsert || trigger.isUpdate){
        for(contact con:trigger.new){
            if(con.AccountId<>null){
                accids.add(con.AccountId);
            }
        }
        list<Account> acc = new list<Account>();
        for(Account a:[select ContactCount__c,(select id from contacts) from Account where id = :accids]){//gets all the contacts for an account
            a.ContactCount__c = a.contacts.size();															//Gives the count of contacts
            acc.add(a);
        }
            update acc;
    }

}