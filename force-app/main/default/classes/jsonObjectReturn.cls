/**
 * @author            : Vrushabh Uprikar
 * @group             : 
 * @last modified on  : 03-04-2021
 * @last modified by  : Vrushabh Uprikar
 * Modifications Log 
 * Ver   Date         Author             Modification
 * 1.0   03-04-2021   Vrushabh Uprikar   Initial Version
**/
public class jsonObjectReturn 
{
	public static String returnJson(String objectName, Id recordId)
    {	
		DescribeSObjectResult describeResult = recordId.getSObjectType().getDescribe();	
        	/* 
			DescribeSObjectResult :Contains methods for describing SObjects.
			getSobjectType() : Returns the Schema.SObjectType object for the sObject.
			getDescribe() : Returns the describe sObject result for this field.
		*/
		List<String> fieldNames = new List<String>( describeResult.fields.getMap().keySet() );	
        	/*
		 	will return all fields name of sObject
		 	keySet() :Returns a set that contains all of the keys in the map
		*/
		String query =' SELECT ' +String.join( fieldNames, ',' ) +' FROM '+ describeResult.getName() +' WHERE '+' id = :recordId '+' LIMIT 1';	
		/*	return generic list of sobjects or typecast to expected type	
			String.join(iterableObj, separator) :	Joins the elements of the specified iterable object into a single String
			DescribeSObjectResult.getName():Returns the name of the object
		*/
		List<SObject> records = Database.query( query );	
		//System.debug( records ); 
		String str = JSON.serialize(records);
		//converts the data isnto seriallized form
    		return str;
    }
}
