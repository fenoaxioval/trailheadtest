/**
 * @description       : 
 * @author            : Feno
 * @group             : 
 * @last modified on  : 06-21-2023
 * @last modified by  : Feno
**/
public with sharing class AccountUtils {
    
    
    public static List<Account> accountsByState(String billingState) {
        List<Account> accountMap = new List< Account>([SELECT Id, Name FROM Account WHERE BillingState =:billingState]);
        return accountMap;
    }
}