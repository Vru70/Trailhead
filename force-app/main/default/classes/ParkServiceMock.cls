@isTest // this is test class
global class ParkServiceMock implements WebServiceMock 
{
	global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) // Defaoult paramenters by doInvoke class
    {
        // start - specify the response you want to send
        ParkService.byCountryResponse response_x =
            new ParkService.byCountryResponse();
       
        List<String> myString = new List<String> {'park12','park13','park1'}; // response MOC
        response_x.return_x = myString;
        // end 
        response.put('response_x', response_x); 
        
        //returning that response
   }
}