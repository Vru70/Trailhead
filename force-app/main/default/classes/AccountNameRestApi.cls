@RestResource(urlMapping='/AccountNameRestApi')
global with sharing class AccountNameRestApi{
   
    // STATIC VARIABLES THAT YOU NEED FOR PROCESSING WILL GO HERE..
   
    @Httppost
    global static CustomResponse AccountNameRest()
    {
        CustomRequest request = (CustomRequest)JSON.deserialize(RestContext.request.requestBody.toString(),CustomRequest.Class);
       
        List<Account> accList = [SELECT Id, Name From Account Where Id in: request.ListAccountId];
       
        List<AccountNameId> accNameList = new List<AccountNameId>();
       
        for(Account acc : accList)
        {
            AccountNameId accountNameID = new AccountNameId(acc.Name,acc.Id);
            accNameList.add(accountNameID);
        }
        CustomResponse response = new CustomResponse();
        response.AccountNameIdList = accNameList;
        return response;
    }

    Private class CustomRequest {
        public List<String> ListAccountId{get;set;}
    }

    global class CustomResponse {
       
        public List<AccountNameId> AccountNameIdList{get;set;}
    }

    global class AccountNameId {
        public String AccountId{get;set;}
        public String AccountName{get;set;}
        public String AccountStatus{get;set;}

        public AccountNameId(String Name,String AccId){
            if(AccId != null){
                AccountName = Name;
            AccountId = AccId;
               AccountStatus = 'SUCCESS';
            }
            else
            {
                AccountStatus = 'Account Id not found';
            }
        }
    }
}