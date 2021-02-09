public class demo1
{ 
    public static List<Integer> lst = new List<Integer>();
    public static void listData()
    {
        //1. Add the values to the list
    	
    	lst.add(1);
    	lst.add(2);
       	lst.add(3);
    	lst.add(4);
        lst.add(5);
    	lst.add(6);
    }
	
    public static void getList()
    {
        //2. Retrieve values from list using index.
        integer j = lst.size();
        for(integer i=0; i<j;i++)
        {
           
            System.debug(lst.get(i));
        }
    }
	
    public static void mapAcc()
    {
        //3. Create a map of Account Ids and Account objects.
      // Map<Id, Account> accountsById = new Map<Id, Account>();
        Map<Id, Account> accId = new Map<Id, Account>();
    }

	
	//4. Write an example of aggregate functions without using a GROUP BY clause.
	//5. Write an example Using SOQL Queries That Return One Record
	//6. Create new objects from SOQL queries on existing ones.
 
}