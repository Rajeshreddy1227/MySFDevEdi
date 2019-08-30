trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
	//List <opportunity> opp = new List<opportunity>();
    List<Task> t = new List<Task>();
    for(opportunity oppLoop:[select id from opportunity where stagename = 'Closed Won' and id in :Trigger.New])
    {
       // List<Task> t = new List<Task>();
        t.add(new Task(Subject = 'Follow Up Test Task',WhatId = oppLoop.Id));
    }
    if (t.size() > 0) {
        insert t;
    }
}