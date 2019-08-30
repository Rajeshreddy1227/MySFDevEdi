public class CloneDemo {
    
    public static void demoClone(){
        Account a = [Select id,name from Account where name = 'GenePoint'];
        list<Account> accList = new list<Account>();
        id rt = '012f20000009vCyAAI';
        
        for(integer i=0;i<250;i++){
            Account aNew = a.clone();//JUST THIS .Clone() WOULD NOT COUNT INTO LIMITS
            aNew.Name = aNew.Name+i;
            aNew.recordtypeid = rt;
            accList.add(aNew);
        }
        
        if(accList.size()>0){
            system.debug('accList Size'+accList.size());
            //insert accList;
        }
    }
}