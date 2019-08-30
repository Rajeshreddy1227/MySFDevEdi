public class PersonUtils {
    //Pass by Reference Demo--see class passByRefer where a class is passed.
    public integer passByVal(integer age){
        return age+20;
    }
    public void passByRefer(Person p){ //pass by reference Demo
        p.taxRate+=100;
    }
}

/*
//
//For all primitive type variables, including numbers, string and boolean, Apex functions will pass by the value. 
//It means it will make a hard copy of the original variable and use that hard copy of it throughout the function body. 
//So if you change the variable value in the function, the original variable won’t be changed.

//However, if you pass an Object type variable into Apex function, 
//it will pass the reference, which is a totally different story.
// Apex will directly use that variable in the function body and all the changes will be kept.
//
//
PersonUtils util = new PersonUtils();
util.passByVal(30);
Person p = new Person();
p.taxRate = 30;
util.passByRefer(p);
system.debug('taxrateNow:'+p.taxRate);
system.debug('from Original Object:'+p.calcSalesTax(10));
*/