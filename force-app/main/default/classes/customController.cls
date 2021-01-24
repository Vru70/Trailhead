public with sharing class customController 
{
    public datetime dateandtime{get; set;}

    public void showdatetime()
    {
        dateandtime = System.now();
    }
}
