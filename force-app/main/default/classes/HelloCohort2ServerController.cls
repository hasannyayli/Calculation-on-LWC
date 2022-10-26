public class HelloCohort2ServerController {
    
    @auraEnabled
    public static Decimal sum(Decimal numberX, Decimal numberY){
        
         Decimal returnValue=numberX+numberY;
        
        return returnValue;
        
    }

}