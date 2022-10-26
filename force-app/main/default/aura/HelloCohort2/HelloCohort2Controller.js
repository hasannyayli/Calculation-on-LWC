({
	calculate : function(component, event, helper) {
		
        var num1=component.get("v.numX");
        var num2=component.get("v.numY");

        var serverController = component.get("c.sum");
        // setParams ile sum(Decimal numberX, Decimal numberY){ numberY ve numberY  JSON formatında ver...
       
        serverController.setParams({
            
            "numberX":num1,
            "numberY":num2
          
        });
        // setCallback ile apex return ettiği değerleri nasıl değerlendireceğimizi yazacağız. 
        
        serverController.setCallback(this,function(response){
            
            console.log(response.getState());
            console.log(response.getReturnValue());
            var calculationResult = response.getReturnValue();
            
            component.set("v.result",calculationResult);
            
        });
        
        
        
        
        
        
        
        // enqueueAction ile Apex'e gönderme ve alma işlemini başlatıyorum...
    	$A.enqueueAction(serverController);
    }
})