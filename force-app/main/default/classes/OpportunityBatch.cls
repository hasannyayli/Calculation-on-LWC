public class OpportunityBatch implements Database.Batchable<SObject>{
    
    //Start : 50 million data scope (small Batch)
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('SELECT Id FROM Opportunity');
    }
    //Execute : small Batch (scope) process > new small (scope) batch
    public void execute(Database.BatchableContext BC, List<Opportunity> scope){
        System.debug('Scope size :' + scope.size());
        for(Opportunity s:scope){
            // system.debug(s);
        }
    }
    //Finish : 50 million data finish
    public void finish(Database.BatchableContext BC){
        System.debug('Batch APEX Opportunity Finished');
    }

}