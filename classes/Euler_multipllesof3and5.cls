public class Euler_multipllesof3and5 {
    public static void mul(){        
        integer sum=0;
        for(integer i=3;i<1000;i++){
            if((math.mod(i, 3)==0)||(math.mod(i, 5)==0)){
                sum+=i;
            }
        }
        system.debug('complete multiples of 3 and 5 <1000:'+sum);
    }

}