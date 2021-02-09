public class ParkLocator // Created class here any
{
	public static String[] country(String name) //  retuning list of strings and accepting one string -> Counrty name
    {
        ParkService.ParksImplPort parkres = new ParkService.ParksImplPort();
        //Creating class from SOAP api XML file .. 
        
        return parkres.byCountry(name);
        //System.debug('ParkService sucessful in main class');
        // pasing result value here 
    }
}