trigger CrudTrigger on Book__c (before insert) {
    
    if(Trigger.isInsert){
        List<Book__c> bt = Trigger.new;
        for(Book__c b:bt)
        {
            b.Name+='Developer';
            System.debug('Trigger Is Running');
        } 
    }   
}