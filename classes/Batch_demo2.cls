global class Batch_demo2 implements database.Batchable<sObject>{
global integer count = 0;
    global database.QueryLocator start(database.BatchableContext bc){
        return database.getQueryLocator('select id,name,description from lead');
    }
    global void execute(database.BatchableContext bc, list<lead> l_list){
        list<lead> l_list_new = new list<lead>();
        for(lead l:l_list){
            l.description = 'testtoday';
            l_list_new.add(l);
            count+=1;
        }
            update l_list_new;
    }
    global void finish(database.BatchableContext bc){
        system.debug('count:'+count);
    }
}

//id batchins = database.executeBatch(new Batch_demo2(), 10);