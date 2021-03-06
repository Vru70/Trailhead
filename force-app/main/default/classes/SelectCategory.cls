// Category with queries that test different keywords with SELECT
public virtual class SelectCategory extends Category {
    public SelectCategory(String name, String description) {
        super(name, description);
    }
    
    public void setSelectQueries(Schema.SObjectType sObjectType) {
        String objString = sObjectType.getDescribe().getName();

        List<Query> queryCategorySelectList = new List<Query>();
        Schema.DescribeSObjectResult result = sObjectType.getDescribe();
        Map<String,Schema.SObjectField> fieldsMap = result.fields.getMap();
        List<Schema.SObjectField> fieldList = fieldsMap.values();
        String queryString;
        
        // Testing all the fields on select
        // Example: SELECT Id, ExternalId, DisplayUrl, createdDate__c, description__c, modifiedDate__c, selfLink__c, title__c FROM googleDrive__x LIMIT 1
        String testFields = 'SELECT ';
        for (Schema.SObjectField field: fieldList) {
            Schema.DescribeFieldResult fieldResult = field.getDescribe();
            testFields = testFields + fieldResult.getName() + ', ';    
        }  
        queryString = testFields.substring(0,testFields.length() - 2) + ' FROM ' + objString + ' LIMIT 1';
        queryCategorySelectList.add(new Query(queryString, 'All of the fields in the selected object', this));
        
        
        // Testing WHERE with a boolean keyword
        // Example: SELECT IsDeleted FROM googleDrive__x WHERE IsDeleted =false LIMIT 1
        for (Schema.SObjectField field: fieldList) {
            Schema.DisplayType fieldType = field.getDescribe().getType();
            if (String.valueOf(fieldType) == 'Boolean') {
                String fieldName = field.getDescribe().getName();
                try {
                    List<sObject> booleanValue = Database.query('SELECT ' + fieldName + ' FROM ' + objString + ' LIMIT 1');
                    String whereBooleanTestQuery = 'SELECT ' + fieldName + ' FROM ' + objString + ' WHERE ' + fieldName + ' = ' + (Boolean)(booleanValue.get(0).get(fieldName)) +' LIMIT 1';
                    queryCategorySelectList.add(new Query(whereBooleanTestQuery, 'SELECT with a boolean type field', this));
                    break;
                } catch (Exception e) {
                    continue;
                }
            }
        }
        
        // Testing WHERE with a string keyword and the OR operator;
        // Example: SELECT ExternalId FROM googleDrive__x WHERE ExternalId ='0B4z2gzEmkDDCLURPQU0zRzNOOEE' OR ExternalId ='0B4z2gzEmkDDCajJidnc1RF8wQWM' LIMIT 1
        for (Schema.SObjectField field: fieldList) {
            Schema.DisplayType fieldType = field.getDescribe().getType();
            if (String.valueOf(fieldType) == 'String') {
                String fieldName = field.getDescribe().getName();
                try {
                    List<sObject> stringValue = Database.query('SELECT ' + fieldName + ' FROM ' + objString + ' LIMIT 2');
                    String stringTest =  (String)(stringValue.get(0).get(fieldName));
                    if (stringTest == null) {
                        continue;
                    }
                    String stringTest2 = (String)(stringValue.get(1).get(fieldName));
                    String whereBooleanTestQuery = 'SELECT ' + fieldName + ' FROM ' + objString + ' WHERE ' + fieldName + ' =\'' + stringTest + '\' OR ' + fieldName + ' =\'' + stringTest2 + '\' LIMIT 1';
                    queryCategorySelectList.add(new Query(whereBooleanTestQuery, 'SELECT with an OR comparator', this));
                    break;
                } catch (Exception e) {
                    continue;
                }
            }
        }
        
        // Testing WHERE with AND condition
        // SELECT Id,ExternalId FROM googleDrive__x WHERE Id ='x0636000000TN9EAAW' AND ExternalId ='0B4z2gzEmkDDCLURPQU0zRzNOOEE' LIMIT 1
        String fieldName = fieldList.get(0).getDescribe().getName();
        String fieldName2 = fieldList.get(1).getDescribe().getName();
        try {
            Object objectValue = Database.query('SELECT ' + fieldName + ' FROM ' + objString + ' LIMIT 1').get(0).get(fieldName);
            Object objectValue2 = Database.query('SELECT ' + fieldName2 + ' FROM ' + objString + ' LIMIT 1').get(0).get(fieldName2);
            String whereANDTestQuery = 'SELECT ' + fieldName + ',' + fieldName2 + ' FROM ' + objString + ' WHERE ' + fieldName + ' =\'' + objectValue + '\' AND ' + fieldName2 + ' =\'' + objectValue2 + '\' LIMIT 1';
            queryCategorySelectList.add(new Query(whereANDTestQuery, 'SELECT with an AND comparator', this));
        } catch (Exception e) {

        }
        
        setQueries(queryCategorySelectList);
    }
    
    public override void validate(Schema.SObjectType sObjectType) {
        setSelectQueries(sObjectType);

        for (Query query: this.getQueries()) {
            try {
                List<sObject> sobjList = Database.query(query.getQuery()); 
                if (sobjList.size() != 0) {
                    query.setQueryPassed();
                } else {
                    query.setQueryFailed('No records found', 'The query ran but didn\'t return any records.');
                }
            } catch (Exception e) {
                query.setQueryFailed(e.getTypeName(), e.getMessage());
            }
            
        }
    }
}