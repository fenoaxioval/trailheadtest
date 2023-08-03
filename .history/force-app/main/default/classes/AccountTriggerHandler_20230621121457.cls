/**
 * @description       : 
 * @author            : Feno
 * @group             : 
 * @last modified on  : 06-21-2023
 * @last modified by  : Feno
**/
public with sharing class AccountTriggerHandler {
    
    
    public static void CreateAccounts(List<Account> accountList) {
        List<Account> accountListToUpdate = new List<Account>();
        for(Account compte: accountList){
            if(compte.ShippingState != compte.billingState){
                compte.ShippingState = compte.BillingState;
                accountListToUpdate.add(compte);
            }
        }

        if(accountListToUpdate.size()>0) update accountListToUpdate;
    }
}