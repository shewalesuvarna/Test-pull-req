public with sharing class SearchRecord {
    public static List<Account> searchAccounts(String searchKeyword) {
        String searchKey = '%' + searchKeyword + '%';
        return [SELECT Id, Name FROM Account WHERE Name LIKE :searchKey];
    }
}
