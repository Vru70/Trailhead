trigger AccountsTrigger on Account (before insert, after delete, after insert, after update, after undelete, before delete, before update) {
	fflib_SObjectDomain.triggerHandler(Accounts.class);
}