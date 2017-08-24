public class BookController {
    public List<Book__c> bookList{get;set;}
    public BookController(){
        bookList=[SELECT Id, Name ,Price__c FROM Book__c];
    }
  //  public Book__c getBookc()
    //{
      //  return book;
    //}
}