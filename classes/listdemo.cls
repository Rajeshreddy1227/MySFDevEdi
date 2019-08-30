public class listdemo {
    public static void display()
    {
        list <integer> demo = new list<integer> {10,100,1000,10000};
    //    demo.add(10);
      //  demo.add(100);
        //demo.add(1000);
  /*      for(integer j=0;j<=demo.size()-1;j++)
            system.debug(demo.get(j));*/
            
            for(integer j:demo)
        {
            system.debug(j);
        }
        
    }

}