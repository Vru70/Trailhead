public class StringArrayTest 
{
	public static list<string> generateStringArray(Integer n)
    {
        List<string> str = new list<string>();
        for(Integer i=0; i<n; i++)
        {
            str.add('Test '+i);
            System.debug(str);
        }
        return str;
    }
}