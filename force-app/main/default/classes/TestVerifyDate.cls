@isTest
public class TestVerifyDate 
{
	@isTest
    public static void methodOne()
    {
        
        Date date1 = Date.today();
        Date date2 = Date.today();
        VerifyDate.CheckDates(date1.addDays(10), date2);
        
    }
    
    @isTest
    public static void methodTwo()
    {
        
        Date date1 = Date.today();
        Date date2 = Date.today();
        VerifyDate.CheckDates(date1, date2.addDays(10));
        
    }
}