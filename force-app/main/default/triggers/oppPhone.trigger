trigger oppPhone on Opportunity (before insert, before update) 
{

    for(Opportunity opp : Trigger.New)
    {
        if(opp.OrderNumber__c == NULL)
        {
            opp.AddError('Plz entr order number / order num can not be blankcv');
        }
    }
}