global class LeadProcessor implements Database.Batchable<sObject>
{
    
    global Database.QueryLocator start (database.BatchableContext bc)
    {
        return database.getQueryLocator('Select IndividualId , Name , LeadSource from Lead');
    }
    global void execute(Database.BatchableContext bc, List<Lead> records)
    {
        List<Lead> lea = new List<Lead>();
        for(Lead l : records)
        {
            l.LeadSource = 'Dreamforce';
            lea.add(l);
        }
        
            update lea;
        
    }
    global void finish(Database.BatchableContext bc)
    {
        System.debug('Updated LEad list ');
    }
	//Collect all LEad record in org
	//
	//
	//Update LEadSource value Deamforce
}