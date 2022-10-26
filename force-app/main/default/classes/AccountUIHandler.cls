public class AccountUIHandler {
    
    @auraEnabled
    public static string create(String accountName){
        
        String returnText;
        
        Account singleAcc = New Account(name=accountName);
     
        try{
            
            insert singleAcc;
            returnText='Success';
            
        }catch(Exception e){
            
         	returnText=e.getMessage();
            
        }
        
        return returnText;
    }

}