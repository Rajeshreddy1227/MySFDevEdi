public class ConstructorDemo {
    private integer salary;
    private string empname;
    public ConstructorDemo(string s,integer i)
    {
        empname = s;
        salary = i;
    }
    public ConstructorDemo()
    {
        empname = 'Rajesh';
        salary = 12000;
    }
    public void display()
    {
        system.debug('Name:'+empname +'And Salary is:'+salary);
    }

}

/*
 * ConstructorDemo c1 = new ConstructorDemo('Shiva',15000);
c1.display();
ConstructorDemo c2 = new ConstructorDemo();
c2.display();


*/