trigger trigOne on Account (after insert,after update) 
{
    list<Contact> listCon = new list<Contact>();
   for(Account acc : Trigger.New)
   {
       if(acc.Account_Type__c == 'B')
       {
           Contact con = new Contact();
           con.LastName = acc.Name + '-Con'; 
           con.AccountId = acc.Id;
           listCon.add(con);
       
           
       }

   }
    
    if(listCon.size() > 0)
    {
        insert listCon;
        system.debug('INserted ');
    }
    system.debug('Success');

}