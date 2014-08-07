trigger IT_WorkFlow_AfterInsert on IT_Workflows__c (before insert) {
    for(IT_Workflows__c w : trigger.new){
        if (w.user_details__c == null){
            w.user_details__c = userinfo.getuserID();
      
        }
    }
    
}