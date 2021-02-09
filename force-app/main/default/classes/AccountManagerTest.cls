@IsTest
private class AccountManagerTest {
    @isTest static void testGetCotactsByAccountId() {
        Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://empathetic-fox-p30ae4-dev-ed.my.salesforce.com/services/apexrest/Accounts/'+recordId+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('Test record', thisAccount.Name);
    }  
    // Helper method
    static Id createTestRecord() {
        // Create test record
        Account accountTest = new Account(
            Name='Test record',First_Name__c='Test',Last_Name__c='record');
        insert accountTest;
         
        Contact contactTest = new Contact(
            FirstName='Greg',
            LastName='Smith',
            AccountId=accountTest.Id
         );
        insert contactTest;
        
        return accountTest.Id;
    }          
}