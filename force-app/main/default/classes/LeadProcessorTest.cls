@isTest
private class LeadProcessorTest 
{
	@testSetup
    static void setup()
    {
        List<Lead> leadsTest = new List<Lead>();
        for(integer i=0; i<10; i++)
        {
            	leadsTest.add(new Lead(LastName='Lead'+i,Company='Company'+i,
                                       Status='Open - Not Contacted'));
		}//Name Company Status-Open - Not Contacted
        
        insert leadsTest;
    }
    
    static testmethod void test()
    {
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        ID batchID = Database.executeBatch(lp);
        Test.stopTest();
        
        System.assertEquals(10,[select count() from Lead where LeadSource = 'Dreamforce']);
    }
    
}