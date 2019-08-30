public class listdemo1 {
    public static void display()
    {
        list<integer> li = new list<integer>{9,8,7,6,5};
        li.add(1);
        li.add(2);
        li.add(3);
        li.add(4);
        for(integer i:li)
        {
            system.debug(li.get(i-1));
        }
      }
}

/*listdemo1.display();*/