trigger AvoidDeletCons on Consultant__c (before delete) 
{
	//List<Consultant__c> ListCons = new List<Consultant__c>();
    
    for(Consultant__c cc: Trigger.old)
    {
        if(cc.Status__c == 'Approved')
        {
            cc.addError('Approved Consultant Can not be Deleted');
        }
    }
}