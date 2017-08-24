public class Crud 
{
    public void insertBook()
    {
        Book__c b = new Book__c();
        b.Name='C';
        b.Price__c='1000';
        insert b;
        System.debug('Data Inserted');
    }
    public void deleteBook()
    {
        List<Book__c> b1=[SELECT Id, Name FROM Book__c WHERE NAME = : 'java'];
        for(Book__c b:b1){
            delete b;
        }
        System.debug('Data Deleted');
    }
    public void updateBook()
    {
        Book__c b2=[SELECT Id, Name FROM Book__c WHERE NAME = : 'C++'];
        b2.Name='php';
        update b2;
        System.debug('Data Updated');
        
    }
    public void displayBook()
    {
        List<Book__c> b3 = [SELECT Id, Name FROM Book__c];
        System.debug(b3);
    }
}