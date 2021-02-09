@isTest
public class AnimalLocatorTest 
{
	@isTest 
    static void testAnimationById()
    {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        
        
        String result = AnimalLocator.getAnimalNameById(1);
        
        
        System.assertNotEquals(null, result,'The callout returned a null response.');
        System.assertEquals('tiger',result);
        
    }
}