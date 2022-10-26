({
    handleChanged : function(component, message, helper) {
      var errMsg = 'No Data Recieved';
      if(message!=null && message.getParam("recordId")!=null){
        var recievedMsg = message.getParam("recordId");
        message.getParam("recordData");
        component.set("v.RecievedMessage",recievedMsg);
      }else{
        component.set("v.ReceivedMessage",errMsg);
      }
        

    }
})