public class ContactSearch 
{
	public static list<Contact> searchForContacts(String lname, String code)
    {
        list<Contact> list1 = [Select ID , FirstName from Contact where LastName=:lname AND MailingPostalCode=:code];
        //id and nasme
        for(Contact con : list1)
        {
            System.debug(''+con.Id);
            System.debug(''+con.FirstName);
           }
        return list1;
    }
}