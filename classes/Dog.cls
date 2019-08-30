public class Dog {
    //Data Encapsulation--see variable gender--set to private and accessed through public class(interface)
	public string name;
    public integer age;
    private string gender;
    public void setGender(boolean isMale){
        if(isMale){
            gender='Male';
        }
        else
            gender='Female';
    }
    public string revealGender(){
        return gender;
    }
}

/*
Dog d = new Dog();
d.name = 'Puppy';
d.age = 2;
d.setGender(true);
system.debug('Gender is:'+d.revealGender());
*/