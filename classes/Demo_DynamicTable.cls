public class Demo_DynamicTable {
    
    @AuraEnabled
    public static ResultWrapper Fetch(string strObjectName,string strFieldSetName){
        set<string> setFieldstoQuery = new set<string>();
        list<FieldsWrapper> lstFieldsWrapper = new list<FieldsWrapper>();
        map<string,string> mapfieldpathLabel = new map<string,string>();
        
        for(schema.FieldSetMember fieldsetMemberobj:readFieldSet(strFieldSetName,strObjectName)){
            setFieldstoQuery.add(fieldsetMemberobj.getFieldPath().toLowerCase());
            mapfieldpathLabel.put(string.valueOf(fieldsetMemberobj.getType()),fieldsetMemberobj.getFieldPath());
            lstFieldsWrapper.add(new FieldsWrapper(fieldsetMemberobj.getFieldPath(),fieldsetMemberobj.getLabel(),string.valueOf(fieldsetMemberobj.getType())));
        }
        string queryString = 'SELECT id,';
        setFieldstoQuery.remove('id');
        queryString+=string.join(new list<string>(setFieldstoQuery),',');
        queryString.removeEnd(',');
        queryString+=' FROM '+strObjectName;
        list<sObject> lstObject = Database.query(queryString);
        system.debug('lstObject==>'+lstObject);
        return new ResultWrapper(lstObject,lstFieldsWrapper);
    }
    
    private static list<schema.FieldSetMember> readFieldSet(string fieldSetName,string objectName){
        map<string,schema.SObjectType> globalDescMap = schema.getGlobalDescribe();
        schema.SObjectType sObjtypeobj = globalDescMap.get(objectName);
        schema.DescribeSObjectResult dsr = sObjtypeobj.getDescribe();
        schema.FieldSet fieldSetObj = dsr.FieldSets.getMap().get(fieldSetName);
        system.debug('FieldSet==>'+fieldSetObj.getFields()[0].getFieldPath()+'FieldType'+string.valueOf(fieldSetObj.getFields()[0].getType()));
        return fieldSetObj.getFields();
    }
    
    
    //This is a wrapper Class
    public class ResultWrapper{
        @AuraEnabled
        public list<sObject> lstObject;
        @AuraEnabled
        public list<FieldsWrapper> lstFields;
        //Constructor for the wrapper class
        public ResultWrapper(list<sObject> lstObject,list<FieldsWrapper> lstFields){
            this.lstObject = lstObject;
            this.lstFields = lstFields;
        }
    }    
    //Second wrapper to the above fieldsWrapper
    public class FieldsWrapper{
        @AuraEnabled
        public string fieldPath{get;set;}
        @AuraEnabled
        public string strlabel{get;set;}
        @AuraEnabled
        public string strtype{get;set;}
    
    public FieldsWrapper(string fieldPath,string strlabel,string strtype){
        this.fieldPath = fieldPath;
        this.strlabel = strlabel;
        this.strtype = strtype;
    }
    }
}