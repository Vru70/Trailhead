@isTest
public class DailyLeadProcessorTest 
{
    // Seconds Minutes Hours Day_of_month Month Day_of_week optional_year
    public static String CRON_EXP = '0 55 14 28 6 ? 2022';
	static testmethod void testScheduledJob() 
    {
        List<Lead> llist = new List<Lead>();
        for(integer i=0; i<200; i++)
        {
           	Lead lnew = new Lead();
            lnew.LastName = 'LastName'+i;
            lnew.Company = 'Company'+i;
            lnew.Status = 'Open - Not Contacted';
            llist.add(lnew);
    	}
        
        insert llist;
        
         Test.startTest();
    DailyLeadProcessor str12 = new DailyLeadProcessor();
    String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP, str12);
     Test.stopTest();
    }
   
}