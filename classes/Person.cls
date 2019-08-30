public class Person {
	public string firstName;
    public string lastName;
    public string gender;
    public integer age;
    public boolean adult;
    public decimal taxRate;
    public void hello(string firstName,string lastName){
        system.debug('Hello, good morning Mr.'+firstName+' '+lastName);
    }
    public string returnDemo(){
        return firstName;
    }
    public decimal calcSalesTax(decimal price){
        return(price*taxRate);
    }
}
/*

Person per = new Person();
string firstName = per.firstName = 'Rajesh';
string lastName = per.lastName = 'Kanduri';
per.gender = 'Male';
per.age = 34;
per.taxRate = 3.5;
per.hello(firstName,lastName);
string returnDemoReturn = per.returnDemo();
system.debug('I am from returnDemo and my firstName is:'+returnDemoReturn);
system.debug('TotalPrice is:'+per.calcSalesTax(50));
    
*/