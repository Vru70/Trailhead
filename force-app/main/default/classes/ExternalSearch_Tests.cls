@isTest
private class ExternalSearch_Tests {
  @isTest
  static void test_method_one() {
    HttpMockFactory mock = new HttpMockFactory(200, 'OK', 'I found it!', new Map<String,String>());
    Test.setMock(HttpCalloutMock.class, mock);
    String result;
    Test.startTest();
      result = ExternalSearch.googleIt('epic search');
    Test.stopTest();
    system.assertEquals('I found it!', result);
  }

  @isTest
  static void test_method_two() {
    HttpMockFactory mock = new HttpMockFactory(500, 'OK', 'Did not recieve a 200 status code: ', new Map<String,String>());
    Boolean exce = false;
    Test.setMock(HttpCalloutMock.class, mock);
    String result;
    Test.startTest();
    try{
        result = ExternalSearch.googleIt('epic search');
    } catch (ExternalSearch.ExternalSearchException ex){
        if(ex.getMessage().equalsIgnoreCase('Did not recieve a 200 status code: 500')){
          exce = true;
        }
    }
    Test.stopTest();
    system.assertEquals(exce,true,'Error Expected');
  }
}