public class ApexMapDemo {
    public void MapDemo(){
        map<id,Account> acc = new map <id,Account>([select id,name,type from Account limit 10]);	//map declaration and initialization
        system.debug('The Keys for the map acc are:'+acc.keyset());		//Keyset Demo
        system.debug('The size of the map is:'+acc.size());				//Size of the map demo
        if(!acc.isempty()){												//isemptydemo
            for(Account a: acc.values()){
                system.debug('The account key is'+a.Id+'and the name of that account  is'+a.Name);
            }
        }
        //system.debug('I am inside of a method');
    }

}