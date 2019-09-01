public class AccessModifiersDemo {
    private integer salary;
    private string empname;
    
    public void setData(integer i,string s)
    {
     	salary = i;
        empname = s;
        system.debug('Git changes==>EmpName:==>'+empname+'Salary is==>:'+salary);
        system.debug("I am in Git feature branch/F3");
    }
    public static void setDataDemo(integer i1,string s1)
    {
       
      
    }

}
/*AccessModifiersDemo Ademo = new AccessModifiersDemo();
Ademo.setData(23000,'Hari');    
*/