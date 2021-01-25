public with sharing class accountList 
{

    @AuraEnabled(cacheable=true)
  public static List<Account> accList()
  {
      return [select Id, Name from Account];
  }
}
