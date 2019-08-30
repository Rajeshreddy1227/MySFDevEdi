global class Batch_demo implements database.Batchable<sObject> {
	
    //variables
    global final string query;
    global final string s_object;
    global final string field;
    global final string fieldvalue;
    //constructor
    global Batch_demo(string q,string s,string f,string v){	
        query = q;
        s_object =s;
        field =f;
        fieldvalue =v;
    }
    global database.QueryLocator start(database.BatchableContext bc){
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<sObject> batch){
        for(sObject o: batch){
            o.put(field, fieldvalue);
        }
        update batch;
    }
    global void finish(database.BatchableContext bc){
        //we can put email method here;
    }
}

/*
 string q='SELECT id,name,description FROM Account';
string s = 'Account';
string f = 'description';
string v = 'updated today';
id batchinstanceid = database.executeBatch(new Batch_demo(q,s,f,v),10);
 */