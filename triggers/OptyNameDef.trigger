trigger OptyNameDef on Opportunity (before insert) {
    if(trigger.isInsert){  
        
        for(Opportunity op:trigger.new)
        {
            op.Description = userInfo.getUserName();
        }
	}
 }