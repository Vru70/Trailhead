trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) 
{
    List<Task> oppList = new List<Task>();
	for(Opportunity op : Trigger.new)
    {
        if(op.StageName == 'Closed Won')
        {
            Task tk = new Task();   
            system.debug('TAsk Created');
            tk.WhatId = op.AccountId;
            tk.Subject = 'Follow Up Test Task';
            system.debug('Subject Changed');
            oppList.add(tk);
            system.debug('Opp added to list');
        }
        
    }
    
    if(oppList.size() > 0)
    {
        insert oppList;
    }
        
    
    
    system.debug('Execution Success of Opp trigger');
   // StageName Closed Won
}