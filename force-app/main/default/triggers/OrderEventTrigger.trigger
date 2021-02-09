trigger OrderEventTrigger on Order_Event__e (after insert) 
{
    list<Task> taskList = new list<task>();
    
    for (Order_Event__e event : Trigger.New) 
    {
        if (event.Has_Shipped__c == true) 
        {
            // Create task 
            
            task newTask = new task();
            newTask.Priority='Medium';
            newTask.Subject='Follow up on shipped order ' + event.Order_Number__c;
			newTask.OwnerId=event.CreatedById;
            taskList.add(newTask);
        }
   }
    
    insert taskList;
}