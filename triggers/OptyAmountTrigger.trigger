trigger OptyAmountTrigger on Opportunity (before insert) {
	OptyAmountCheck.AmountCheck(Trigger.new);//Calling APEX Class
}