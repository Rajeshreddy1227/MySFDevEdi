public class StringArrayTest {
    public static List<String> generateStringArray(integer n)
    {
        integer n1;
        n1 = n;
      //  callArray(n1);
        list<string> s = new list<string>();
        for (integer k=0;k<n1;k++)
        	s.add('Test '+ +k);
        return s;
        //system.debug('list string display'+s);
    }
	
    
    
    /*private static void callArray(integer n1)
    {
        list<string> s = new list<string>();
        for (integer k=0;k<n1;k++)
        	s.add('Test '+ +k);
       // return s;
        system.debug('list string display'+s);
    }*/
}