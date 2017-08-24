@RestResource(urlMapping='/Book__c/*')
global class ExampleRestApi {
    
    @HttpGet
    global static void doGet()
    {
		RestRequest req=RestContext.request;
		RestResponse res=RestContext.response;
		String 	bookId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
		List<Book__c> result=[SELECT ID, NAME, PRICE__c FROM Book__c];
       	res.responseBody=blob.valueOf('hiiii');
        
    }
    
    @HttpPost
    global static String doPost(String name,String price)
    {
        Book__c b1=new Book__c();
        b1.Name=name;
        b1.Price__c=price;
        insert b1;
        return b1.Id;
    }

}