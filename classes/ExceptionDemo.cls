public class ExceptionDemo {
    public static void display()
    {
        Account a1 = [select Name from Account where name like 'Hello%' limit 1];
        system.debug(a1.name);
        
        list<Lead> l = [select name from Lead];
          for(integer i=0;i<l.size()-1;i++)
            system.debug(l.get(i).name);
        
        Lead l1 = [select name from Lead where Name like 'Raje%' limit 1];
        system.debug(l1.name);
        
        try{
        //    Lead l2 = [select name from Lead where Name like 'Rajeshkanduri%' limit 1]; 
            Account Acc = new Account();
            Insert Acc;
        }
        catch(QueryException e)
        {
            system.debug(e.getMessage());
        }
        catch(DMLException e1)
        {
            system.debug(e1.getMessage());
            system.debug(e1.getDmlFields(0));
            system.debug('number of failed records is:'+e1.getNumDml());
        }
    }

}