public class AccountHandler 
{
    
    public static void insertAccount(integer val)
    {
        list<Account> addAccounts = new list<Account>();
        Integer counter = 1;
        while(counter <= val)
        {
            Account a = new account();
            a.Name = 'Acme Inc '+counter;
            a.AccountNumber = 'A000'+counter;
            addAccounts.add(a);
            counter++;
        }
        
        if(addAccounts.size()>0)
        {
            insert addAccounts;
        }
    }
    
    
    
    
    
    
    
    /*
	public static Account insertNewAccount(String Aname)
    {
        	Account acc;
        try{
            acc = new Account(Name=Aname);
        	insert acc;
            ID accID = acc.Id;
			// Display this ID in the debug log
			System.debug('ID = ' + accID);
        } catch (DmlException e) 
        {
    		System.debug('A DML exception has occurred: ' +e.getMessage());
            return null;
		}
        
        return acc;
    }*/
}