public class ContactAndLeadSearch {
    public static list<list <sObject>> searchContactsAndLeads(string str)
    {
     	list<list <sObject>> so = [FIND :str in all fields
                                   returning Contact(FirstName,LastName),Lead(FirstName,LastName)] ;  
            return so;
    }
}