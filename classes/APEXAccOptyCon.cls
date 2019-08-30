public class APEXAccOptyCon {
   // public static void AccOptyCon(){
            public static void AccOptyCon(list<account> acc1){
                set<string> AccId = new set<string>();
             for(Account acc:[select id,name from account where id = '001f200001ZjwGfAAJ'])
             {
                 AccId.add(acc.id);
             }
                system.debug('--AccountId SET:--'+AccId);
                map<id,map<id,contact>> master = new map<id,map<id,contact>>();
             map<id,Contact> AccConMap = new map<id,Contact>([select id,name,accountid from contact where accountid =:AccId]);
                system.debug('--All Contacts with Account->AccContactMap:'+ AccConMap);
               for(Account acc:[select id,name from account where id = '001f200001ZjwGfAAJ']) 
               {
                   if(!master.containskey(acc.id))                                    
                       master.put(acc.id,new map<id,Contact>());
                       master.put(acc.id,AccConMap)  ;                    
               }
                system.debug('MasterLoop:'+Master);
    }

}