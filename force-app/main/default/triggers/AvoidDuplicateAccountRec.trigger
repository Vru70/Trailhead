trigger AvoidDuplicateAccountRec on Account (before insert) 
{
	List<String> AccName = new List<String>();
    
    for(Account A : Trigger.New)
    {
        AccName.add(A.Name); //collected all new account names
    }
    
    List<Account> AccList = new List<Account>();
    AccList = [Select id, name from Account where Name IN : AccName]; // Collected all saved duplicat accounts 
    
    Map<String,Account> mapAcc = new Map<String,Account>(); // created map 
    
    for(Account Ac : AccList)
    {
        mapAcc.put(Ac.Name,Ac); // added ac name as key and ac object as value
    }
    
    for(Account Acc: Trigger.New)
    {
        	if(mapAcc.containsKey(Acc.Name))
            {
                Acc.addError('You are creating Duplicate Account');
            }
    }
}