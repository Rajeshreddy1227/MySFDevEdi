public class ContactSearch {
    public static list<contact> searchForContacts(string lastname,string postalcode)
    {
        list <contact> c  = new list <contact>();
           c= [select id,name from contact where lastname =:lastname and MailingPostalCode=:postalcode];
        return c;
    }

}