public class Demo_Queuable implements queueable{
    public static void execute(QueueableContext qc){					//Execute method mandatory and parameter QueueableContext
        Account a = new Account(name = 'New Acc');
        insert a;
    }
}

/*
ID jobid = system.enqueueJob(new Demo_Queuable());
system.debug('Jobid:'+jobid);
*/