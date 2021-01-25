public with sharing class accountList 
{

    @AuraEnabled(cacheable=true)
  public static List<Account> accList()
  {
      List<Account> v1 = [select Id, Name, OwnerId, AnnualRevenue from Account];
      return v1;
  }
}
