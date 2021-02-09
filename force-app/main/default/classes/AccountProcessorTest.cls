@isTest
public class AccountProcessorTest 
{
	public static testmethod void TestAccountProcessorTest()
    {
        Account a = new Account();
        a.Name = 'Test Account';
        Insert a;
        
        
        Contact con = new Contact();
        con.FirstName ='Fnmae';
        con.LastName = 'Lname';
        con.AccountId = a.Id;
        insert con;
        
        
        
        set<id> setAccId   = new set<id>();
        setAccId.add(a.Id);
        
        
        Test.startTest();
        AccountProcessor.countContacts(setAccId);
        Test.stopTest();

        
    }
}