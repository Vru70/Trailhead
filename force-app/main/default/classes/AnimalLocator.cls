public class AnimalLocator 
{
	public static String getAnimalNameById(Integer id)
    {
        String response= NULL; // created returning string variable
        Http http = new Http(); // hhtp object
        HttpRequest req  = new HttpRequest(); // reuest object 
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id); // in reqyest -> set end point URL -> i.e. target URL
        req.setMethod('GET'); // Set Requesd Method -> GET
        HttpResponse res = http.send(req); // Craete Response Object and Collect Respose of http.send method
        
        
        
        if(res.getStatusCode() == 200) // Checking if Status is 200 i.e. Succsess
        {
           Map<String ,Object> result = (Map<String ,Object>) JSON.deserializeUntyped(res.getBody());
            // creating MAp of String and  parse json file to map map me result.get body
           Map<String ,Object> animals = (Map<String ,Object>) result.get('animal');
            // now result object se name select kar k extract kia 
           System.debug('Recived Animals');
           response = string.valueOf(animals.get('name'));
          // value of name return karega..
        }
        
        return response;
    }
}