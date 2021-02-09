public with sharing class AccountController 
{
    public static List<Account> getAllActiveAccounts()
    {
        return [Select Id, Name, Active__c from Account Where Active__c = 'Yes'];
    }

}