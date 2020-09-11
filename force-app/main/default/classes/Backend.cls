public class Backend {

    @AuraEnabled(cacheable=true)
    public static Map<String, Object> getData(Id recordId){
        //optional recordId param in case you want to grab record data

                // Sample JSON --> this can be your web service etc
                JSONGenerator gen = JSON.createGenerator(true);
                gen.writeStartObject();
                gen.writeStringField('Status', 'Pending');
                gen.writeNumberField('YTD', 100);
                gen.writeStringField('Type', 'Standard');
                gen.writeNumberField('Adjustment', 3.2);
                gen.writeStringField('Authorized', 'Yes');
                gen.writeStringField('Other', 'N/A');
                gen.writeEndObject();
                String s = gen.getAsString();
                
                //Only need this for this example, else it's basically your JSON response - i.e., JSON.deserializeUntyped(response)
                Map<String, Object> myOutput = (Map<String, Object>) JSON.deserializeUntyped(s);        
        
                return myOutput;         

    }
}