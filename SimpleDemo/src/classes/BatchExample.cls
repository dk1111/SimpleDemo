global class BatchExample implements
        Database.Batchable<sObject> {
            global final String query;
            global BatchExample(String q) {
                query = q;
            }
            global Database.QueryLocator start(Database.BatchableContext BC){
                return Database.getQueryLocator(query);
            }
            global void execute(
                Database.BatchableContext BC,
                List<sObject> scope){
                    delete scope;
                    Database.emptyRecycleBin(scope);
                }
            global void finish(Database.BatchableContext BC){
                    
                    
                    }
        }