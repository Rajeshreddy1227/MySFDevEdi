public class breakdemo {
    public static void display()
    {
        List <integer> li = new List<integer> {1,2,3,4,5,6,7,8,9,10};
        /*    for(integer i:li)
            system.debug(i);*/
            
            for(integer i = 0;i<li.size();i++)
        {
        	if(i==5)
            {
              //  break;
              continue;
            }
            system.debug(li.get(i));
        }
            
    }

}