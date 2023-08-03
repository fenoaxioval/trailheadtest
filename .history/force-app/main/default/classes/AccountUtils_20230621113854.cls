/**
 * @description       : 
 * @author            : Feno
 * @group             : 
 * @last modified on  : 06-21-2023
 * @last modified by  : Feno
**/
public with sharing class AccountUtils {
    
    
    public accountsByState(String billingState) {
        Map<Id, Account> accountMap = new Map<Id, Account>([SELECT Id, Name FROM Account WHERE BillingState =:billingState]);
        return accountMap;
    }
}