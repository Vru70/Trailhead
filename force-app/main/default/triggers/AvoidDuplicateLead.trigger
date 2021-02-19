trigger AvoidDuplicateLead on Lead (before insert) 
{
	List<String> ListLname = new List<String>(); // Created List of string to store email and last name
    List<String> ListEmail = new List<String>();
    
    for(Lead l: Trigger.New)
    {
        ListLname.add(l.LastName); // collected email and last name from new trigger and store in seprate list
        ListEmail.add(l.Email);
    }
    
    List<Lead> DupLead = new List<Lead>(); // created a Lead list to store leads which having duplicate lastname or email
    DupLead = [Select Id, LastName , Email from Lead where LastName In : ListLname OR Email In: ListEmail ];
    
    Map<String, Lead> mapLead = new  Map<String, Lead>(); //reated a  map
    
    for(Lead li: DupLead)
    {
        mapLead.put(li.LastName, li); // put down value and key togather
        mapLead.put(li.Email, li);
    }
    
    for(Lead leadTrig : Trigger.New)
    {
       if(mapLead.containsKey(leadTrig.Email) && mapLead.containsKey(leadTrig.LastName)) // comparision wit hnew triggrt
       {
           leadTrig.addError('Duplicate Last Name and Email Found');
       }
        else
       {
           if(mapLead.containsKey(leadTrig.Email))
      		 {
          		 leadTrig.addError('Duplicate Email Found');
      		 }
        
       		 if(mapLead.containsKey(leadTrig.LastName))
       		{
       		    leadTrig.addError('Duplicate Last Name Found');
       		}
       }
       
    }
    
}