global class MyFirstBatchClass implements Database.Batchable<sObject>
{
	global Database.QueryLocator start(Database.BatchableContext bc)
    {
        // collect the batches of records or objects to be passed to execute
        // 
        String query = 'Select Id, Name from Account';
        
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext Bc, List<Account> sccList)
    {
        system.debug('acclist='+ sccList);
        for(Account sc : sccList)
        {
            
        }
    }
        
    global void finish(Database.BatchableContext bc)
    {
       system.debug('Finish Method');
    }
   
}