public class StaticVarDemo 
{
    public static integer age;
    public string name;
    public static void display()
    {
        system.debug('Age is:'+age );
    }
      public void demo()
    {
        system.debug('Name is:'+name);
    }

}
/*
 //Static Demo
StaticVarDemo sd = new StaticVarDemo();
sd.name = 'Rajesh';
sd.demo();

StaticVarDemo.age = 24;
StaticVarDemo.display();

*/