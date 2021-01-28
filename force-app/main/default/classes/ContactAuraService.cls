public with sharing class ContactAuraService 
{
    @AuraEnabled(cacheable = true)
    public static List<Contact> getContactList(String name)
    {
        if(String.isBlank(name)) 
        {
            return new List<Contact>();
        }
        String key = '%'+ name + '%';
        return [Select Id, Name, Email from Contact Where Name LIKE : key];
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList(String name)
    {
        try 
        {
            String key = '%'+ name + '%';           
            return  [Select Id, Name, Industry from Account Where Name LIKE : key];

        } catch (Exception e) 
        {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
