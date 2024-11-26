trigger CTPersonTrigger on Person__c (before insert, after insert, before update, after update, before delete, after delete) {

    switch on Trigger.operationType{
        when BEFORE_INSERT {
        //todo: update health status to green
        //todo: generate unique token for the person record  
        CTPersonTriggerHandler.beforeInsert(Trigger.new);
        }   

        when else{

        }
    }
}

