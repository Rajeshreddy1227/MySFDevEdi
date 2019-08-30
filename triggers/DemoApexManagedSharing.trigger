trigger DemoApexManagedSharing on PrivateObject__c (after insert) {
    if(trigger.isInsert){
        list<PrivateObject__Share> po_list_List = new list<PrivateObject__Share>();
        Group Localgroupid = [SELECT id,name FROM Group where name = 'LocalGroup'];
        for(PrivateObject__c pos:trigger.new){
            PrivateObject__Share po_list_new = new PrivateObject__Share();
            po_list_new.ParentId = pos.Id;            
            po_list_new.AccessLevel = 'Edit';
            po_list_new.userorgroupid = Localgroupid.id ; 
            po_list_new.RowCause = Schema.PrivateObject__share.RowCause.codeAPEXManagedSharing__c;//APEX sharing reason is appended with __c***
            po_list_List.add(po_list_new);
            
        }
        Database.SaveResult[] jobShareInsertResult = database.insert(po_list_List,false);
    }
}