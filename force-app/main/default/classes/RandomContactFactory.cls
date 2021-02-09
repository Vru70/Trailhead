public class RandomContactFactory 
{
	public static list<Contact> generateRandomContacts(integer i, string s)
    {
        list<Contact> lstCon = new list<Contact>();
        
         for(integer j=1; j<=i; j++)
         {
             Contact c = new Contact();
             c.FirstName = 'Test'+j;
             c.LastName = s;
             lstCon.add(c);
         }
        
        
        return lstCon;
	}
}