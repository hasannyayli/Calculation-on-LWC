public class OpportunitySchedule implements Schedulable{
    
    public void execute(SchedulableContext SC){
        List<Opportunity> multiOpp = [SELECT Id FROM Opportunity];
        for(Opportunity singleOpp:multiOpp){
            System.debug('Opportunity Name : '+singleOpp.Name);
        }
    }

}