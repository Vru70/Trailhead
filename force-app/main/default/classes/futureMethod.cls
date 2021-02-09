global class futureMethod 
{
	@future
    public static void method()
    {
        Contact[] con = [select id from Contact];
        Integer i = 1;
        for(Contact c : con)
        {
            system.debug('My Contacs  ' + i+' '  + c);
            i++;
        }
        
    }
}