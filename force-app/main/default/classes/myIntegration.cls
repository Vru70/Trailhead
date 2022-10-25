@RestResource(urlMapping='/MyIntegration/*')
global class myIntegration
{
	@HttpGet
    global static String getAccounts()
    {
        RestRequest request = RestContext.request;
        list<Account> result = new list<Account>();
        result =  [SELECT Name,Website FROM Account];
        System.debug('result '+result);
        return JSON.serialize(result);
    }
    
   @HttpPost
   global static Id setAccounts(String AccountName) {
        Account acc = new account();
        acc.Name = AccountName ;
        acc.Website = 'www.'+ AccountName +'.com' ;
        Insert acc ;
       	System.debug('Account Id '+ acc.Id);
        return acc.Id;
    }
}