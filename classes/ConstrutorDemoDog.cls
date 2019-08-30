public class ConstrutorDemoDog {
    //Constructor Demo--see ConstrutorDemoDog--function overloading
	private string name;
    public integer age=2;
    public ConstrutorDemoDog(string name){
        this.name = name;
    }
     public ConstrutorDemoDog(string name,integer age){
        this.name = name;
        this.age = age;
    }
     public ConstrutorDemoDog(){
        this.name = name;
    }
    public void greet(){
        system.debug('Hello my name is:'+name);
        system.debug('My age is: '+age);
    }
}

/*

ConstrutorDemoDog demo = new ConstrutorDemoDog('puppy');
demo.greet();

ConstrutorDemoDog demodef = new ConstrutorDemoDog();
demodef.age = 21;
demodef.greet();

ConstrutorDemoDog demodefparam = new ConstrutorDemoDog('2params',5);
demodefparam.greet();



*/