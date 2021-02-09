trigger EmialSenderAccount on Account (after insert) 
{
    List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
    List<String> listEmail = new List<String>();
    for (Account acct : Trigger.New) 
    {
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        listEmail.add(acct.Email__c);
        email.setToAddresses(listEmail);
        email.setSubject('Created Account');
        email.setPlainTextBody(acct.Name + ' has been deleted.');
        emails.add(email);  // putting the instance in the list.
        System.debug('AcCount has been created');
    }
    Messaging.sendEmail(emails);
    system.debug('Email has been send');

}