trigger accountashippingaddress on Account (after update, before insert, before update) 
{
    if(Trigger.isUpdate && Trigger.isAfter)
    {
        Set<Id> accountIdz = new Set<Id>();
        List<Contact> newConList = new List<Contact>();
        
        for(Account acc: Trigger.new)
        {
            // collecting Older version of Account with the oldMap by passing Account ID
            Account oldAcc = Trigger.oldMap.get(acc.Id);
            // cheacking account has change or not
            if( acc.ShippingStreet != OldAcc.ShippingStreet || 
                acc.ShippingCity != OldAcc.ShippingCity || 
                acc.ShippingState != OldAcc.ShippingState || 
                acc.ShippingPostalCode != OldAcc.ShippingPostalCode || 
                acc.ShippingCountry != OldAcc.ShippingCountry ) 
                {    
                    accountIdz.add(acc.Id); // Adding Account ID to Set of Account 
                   // acc.Shipping_Change_Counter__c++; // Increment on Account Address chnage
                   // updateCounter.add(acc); // Adding updateCounter field value to account 
                }    
        }

        if(accountIdz.size() > 0 )
        {
            // collecting related contacts that need to update 
            List<Contact> contactToUpdate = [Select Id, AccountId from Contact where AccountId IN :accountIdz];

            for(Contact con : contactToUpdate)
            {
                // Collect account new version
                Account A = Trigger.newMap.get(con.AccountId);
                con.MailingStreet = A.ShippingStreet;
                con.MailingCity  = A.ShippingCity;
                con.MailingState  = A.ShippingState;
                con.MailingPostalCode  = A.ShippingPostalCode;
                con.MailingCountry  = A.ShippingCountry;
                newConList.add(con);
            }

        }
        if(newConList.size() > 0 )
        {
            update newConList;
            String v1 = 'Contact Updated Successfully on Account Address change - Trigger.';
            System.debug(v1);

           // update updateCounter;
           // String v2 = 'Account Counter Updated Successfully on Account Address change - Trigger.';
           // System.debug(v1);
        }


    }
   
    if(Trigger.isBefore && Trigger.isInsert)
    {
        for(Account acc: Trigger.new)
        {
            acc.Shipping_Change_Counter__c=0;
            system.debug('Counter of Acc ' + acc.Name + ' Value : '+ acc.Shipping_Change_Counter__c );
        }
    }


    if(Trigger.isBefore && Trigger.isUpdate)
    {
        for(Account acc: Trigger.new)
        {
            // collecting Older version of Account with the oldMap by passing Account ID
            Account oldAcc = Trigger.oldMap.get(acc.Id);
            // cheacking account has change or not
            if( acc.ShippingStreet != OldAcc.ShippingStreet || 
                acc.ShippingCity != OldAcc.ShippingCity || 
                acc.ShippingState != OldAcc.ShippingState || 
                acc.ShippingPostalCode != OldAcc.ShippingPostalCode || 
                acc.ShippingCountry != OldAcc.ShippingCountry ) 
                {    
                    
                    acc.Shipping_Change_Counter__c++; // Increment on Account Address chnage
                   
                }    
        }
    }
}