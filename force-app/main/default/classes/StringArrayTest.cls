public class StringArrayTest 
{
	 public static void generateStringArray(Integer a)
     {
         List<String> moreColors = new List<String>();

         for(Integer x=0; x < a; x++)
         {
             moreColors.add('orange'+ x);
         }
         
       for(Integer x=0; x < a; x++)
         {
            System.debug(moreColors[x]);
         }
             
     }
}