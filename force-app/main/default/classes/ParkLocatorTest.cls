@isTest
public class ParkLocatorTest 
{
	@isTest static void testCallout()
    {
        Test.setMock(WebServiceMock.class, new ParkServiceMock()); // Seting mock class data
        List<String> result= new List<String>(); // acccpetying result
        List<String> expected = new List<String>{'Park1','Park2','Park3'}; // response for validation
        
        result = ParkLocator.country('india'); // calling class
        
        system.assertEquals(expected, result); // comaprin g values and result 
        
        system.debug('ParkService success in test call');
    }
}