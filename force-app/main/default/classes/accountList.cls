public with sharing class accountList 
{

  @AuraEnabled(cacheable=true)
  public static List<Account> accList(String k)
  {
    try 
    {
        String key = '%'+ k + '%';           
        return  [Select Id, Name, Industry from Account Where Name LIKE : key];

    } catch (Exception e) 
    {
        throw new AuraHandledException(e.getMessage());
    }
  }
}