@IsTest
public class TestRestrictContactByName 
{
    @IsTest
    public static void cc()
    {
        Contact c = new Contact();
        c.LastName = 'INVALIDNAME';
        insert c;
    }
    
    @IsTest
    public static void ccc()
    {
        Contact c1 = new Contact();
        c1.LastName = 'Anyname';
        insert c1;
    }

}