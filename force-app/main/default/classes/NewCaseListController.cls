Public class NewCaseListController 
{
	List<Case> results = new List<Case>();
    private String sortOrder = 'CaseNumber';
    public List<case> getNewCases()
    {
       results = [SELECT Id, CaseNumber FROM Case WHERE Status = 'New'];

    	return results;
    }
    
}