/**
 * @description       : 
 * @author            : Feno
 * @group             : 
 * @last modified on  : 06-21-2023
 * @last modified by  : Feno
**/
trigger AccountTrigger on Account (before insert) {

    if (Trigger.isBefore && Trigger.isInsert) {
        AccountTriggerHandler.CreateAccounts(Trigger.new);
    }
}