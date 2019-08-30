public class demosObject {
    public static void sobjectdemo(){
//ALL ABOUT TOKENS        
        sobject s =  new Account();
        //getsObjectType
        Schema.SObjectType t = s.getSObjectType();
        system.debug('==t=='+t);//Account
        
        schema.DescribeSObjectResult dsr = schema.SObjectType.Account;
        system.debug('==dsr=='+dsr);// returned schemaresult
        system.debug('==dsr name=='+dsr.name);//Account
        
        schema.DescribeSObjectResult dsr1 = Account.sObjectType.getDescribe();
        system.debug('==dsr1=='+dsr1);
        system.debug('==dsr1 child relationsships=='+dsr1.childrelationships.size());//86
        
        schema.DescribeFieldResult dfr = schema.SObjectType.Account.Fields.Name;
        system.debug('==dfr=='+dfr);
        //Above and below are same
        schema.DescribeFieldResult dfr1 = Account.name.getDescribe();
        system.debug('==dfr1=='+dfr1);
        
        system.debug('==dfr getsObjectField'+dfr.getSobjectField());// Name
        
        system.debug('==dfr name'+dfr.name);//returned Name
        
        system.debug('==dfr description field'+schema.SObjectType.Account.Fields.Description.length);// returned 32000
        
        sObject con = Database.query('select id from contact limit 1');
        system.debug('con sObjecttype==>'+con.getSObjectType());//HERE con.sobjectType doesnt work***************
        
        sObject con1 = new contact();
        system.debug('con1.sObjecttype==>'+con1.getSObjectType().getDescribe());
//USING FIELD TOKENS
		schema.SObjectField fieldToken = Account.Name;
        system.debug('==Field Token==>'+fieldtoken);
        schema.DescribeFieldResult dfrcon = schema.SObjectType.contact.fields.Name;
        system.debug('==dfrcon==>'+dfrcon);
        system.debug('==dfrcon.name==>'+dfrcon.name);
        system.debug('==dfrcon.getSobjectField().getDescribe()==>'+dfrcon.getSobjectField().getDescribe());
        
        //****************//
        map<string,schema.SObjectField> mapofFields = schema.SObjectType.Contact.fields.getmap();
        system.debug('==mapoffields keyset=='+mapofFields.keyset());
        system.debug('==mapoffields values=='+mapofFields.values());//This gives the field names of the contact object
        
    }
    public static void sObjectDemoschemMethod(){
  //*******************Describing sObjects Using Schema Method  *****************************************   
        list<string> types = new list<string>{'Account','contact'};
            schema.DescribeSObjectResult[] results= schema.describeSObjects(types);
        
        system.debug(' there are =>'+results.size() +'sObject in the array');
      //  map<string,schema.SObjectField> mfields;
        for(schema.DescribeSObjectResult res:results){
            
            map<string,schema.SObjectField> mfields = res.fields.getMap();
            system.debug('mFields keys'+mfields.keyset());
            system.debug('mFields values'+mfields.values());
            system.debug('sObject label'+res.getLabel());
            system.debug('Num of Fields==>'+res.fields.getmap().size());
        }
    }
}