//Called from Trigger--OptyAmountTrigger
public class OptyAmountCheck {
       Public static void AmountCheck(list<Opportunity> opp){
            double totalamount=0;
        for(Opportunity o1:[select id,amount from opportunity where CreatedDate = Today and CreatedById=:userInfo.getUserId()]){
         totalamount=totalamount+o1.amount;   
        }
           for(opportunity o2:opp){
               totalamount=totalamount+o2.amount;
               if(totalamount>100000)
               {
                   o2.addError('You have exceeded the amount');
               }
           }
           
    }
}