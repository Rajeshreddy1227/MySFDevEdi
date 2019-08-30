trigger AccTrigger on Account (before insert,before update) {

    for(Account acc: Trigger.New)
    {
        if(acc.site==null)
        {
            //acc.addError('AccountSource is Mandatory!');
            //Apexclass.MethodName(Trigger.New)
        }
    }
}