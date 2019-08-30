public class Demo_ApexScheduler implements Schedulable {
    public static void execute(SchedulableContext sc){
        Account a = new Account(name = 'Account Scheduled');
        insert a;
    }
}

//goto Apex classes> click on schedule Job to give a name and point this job and schedule it. This would be visible in scheduled jobs once Scheduled.