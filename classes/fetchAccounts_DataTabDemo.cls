public class fetchAccounts_DataTabDemo {
    @AuraEnabled
    public static list<account>  fetchAccountAPEXController(){
       List<Account> accList = [SELECT Id, Name, BillingState,Website, Phone, Industry, Type from Account LIMIT 10];
        //return list of accounts 
        return accList;
    }
}