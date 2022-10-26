public class customListController {

    public customListController(ApexPages.StandardController controller) {

    }


  public List<Opportunity> multiOp{get;set;}

    public customListController(){
    
        multiOp=[SELECT id, Name, Amount, AccountId, StageName, CloseDate FROM Opportunity LIMIT 20];
    
    }

}