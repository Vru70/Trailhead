public class AccountUtility 
{
	public static void viewAnnualRevenue()
    {
        list<Account> accountsList = new  list<Account>();
        accountsList = [Select Name , AnnualRevenue from Account];
        
        
        for(Account a : accountsList)
        {
            String acctRev = ''+a.Name+' : '+a.AnnualRevenue;
            system.debug(acctRev);
        }
    }
}