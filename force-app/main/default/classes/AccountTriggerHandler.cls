/**
 * @description       : 
 * @author            : Feno
 * @group             : 
 * @last modified on  : 06-21-2023
 * @last modified by  : Feno
**/
public with sharing class AccountTriggerHandler {
    
    
    public static void CreateAccounts(List<Account> accountList) {
        for(Account compte: accountList){
            if(compte.ShippingState != compte.billingState){
                compte.ShippingState = compte.BillingState;
            }
        }

    }
}