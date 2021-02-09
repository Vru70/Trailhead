trigger demo on Account (after insert) 
{
    // Write a trigger example to insert contact when you create account.
        
            System.debug('Trigger Start');
            List<Contact> ct = new List<Contact>();
            for(Account ac : Trigger.new)
            {
                Contact cc = new Contact(
                    LastName= ac.Name +'_Cont',
                    AccountId=ac.Id,
                    Phone=ac.Phone);
                ct.add(cc);
            }
            
            System.debug('Trigger end');
        if (ct.size()>0) 
        {
            insert ct;
            System.debug('Inserted data');
        }


}