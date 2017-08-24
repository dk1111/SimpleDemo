public class Simple {
    
    public void display()
    {
        System.debug('Hii All');
        Date d = Date.today();
        String s = String.valueOf(d);
        System.debug('Today Date'+s);
    }
    public enum Season{winter,spring,summer,fall}
    public static void simple()
    {
        System.debug('Hello');
        
        Season s = Season.summer;
    	if(s==Season.summer)
        {
            System.debug(s);
        }else{
            
            System.debug('Not');
        }
        Integer []i= new LIST<Integer>{10,20};
         //i.add(10);
        Integer j=i[0];
        System.debug(j);
        Integer k=i[1];
        System.debug(k);
        i.add(50);
        System.debug(i[2]);
        i.set(2, 100);
		System.debug(i[2]);        
        
    }
}