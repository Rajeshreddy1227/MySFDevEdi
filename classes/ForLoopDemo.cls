public class ForLoopDemo {
    public void forLoop(){
        list<integer> num = new list<integer>();
        for(integer i=1;i<=10;i++){
            num.add(i);
        }
        integer sum=0;
        for(integer n:num){
            sum+=n;
        }
        list<integer> threetable = new list<integer>();
        for(integer i=3;i<100;i+=3){
            threetable.add(i*3);
        }
        integer tot=0;
        for(integer t:threetable){
           tot+=t; 
        }
        system.debug('Total of 3 table : '+tot);
        system.debug('Total Sum: '+sum);
        system.debug('The size of the List is: '+num.size());
    }
}