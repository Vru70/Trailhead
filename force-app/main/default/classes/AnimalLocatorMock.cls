@isTest
global class AnimalLocatorMock implements HttpCalloutMock
{
	global HTTPResponse respond(HTTPRequest request)
    {
        HttpResponse response = new HttpResponse();
        
        response.setHeader('Content-Type', 'applocation/json');
        response.setBody('{"animal":{"id":1,"name":"tiger","eats":"dear","says":"grow"}}');
        response.setStatusCode(200);
        return response;
                   
        
    }
}