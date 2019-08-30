trigger AccountTrigger on Account (before insert) {
    if(trigger.isBefore && trigger.isInsert){
        //AccountTriggerHandler.CreateAccounts(Trigger.new);
        APEXAccOptyCon.AccOptyCon(Trigger.new);
        }
        
}