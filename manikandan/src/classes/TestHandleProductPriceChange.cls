@isTest
private class TestHandleProductPriceChange {

static testMethod void testPriceChange() {

Invoice_Statement__c invoice = new Invoice_Statement__c(Status__c = 'Negotiating');
insert invoice;

Merchandise__c[] products = new Merchandise__c[]{
new Merchandise__c(Name = 'item 1', Description__c = 'test product 1', Price__c = 10,
Total_Inventory__c = 10),
new Merchandise__c(Name = 'item 2', Description__c = 'test product 2', Price__c = 11,
Total_Inventory__c = 10)
};
insert products;



products[0].price__c = 20; // raise price
products[1].price__c = 5; // lower price
Test.startTest();
update products;
Test.stopTest();


}

}