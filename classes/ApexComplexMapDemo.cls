public class ApexComplexMapDemo {

    public static void MapDemo(){
       //
      	 Map < Id, List < Contact >> mapAccIdByCntlst = new Map < Id, List < Contact >> ();
		for (Contact c: [Select Id, name, AccountId from Contact where AccountId != null limit 10] ) {

        // AccountId mapping with Contact List

        if (mapAccIdByCntlst.containsKey(c.AccountId)) {
                mapAccIdByCntlst.get(c.AccountId).add(c); //tricky part .Here map.get(key) is returning list and we are adding contacts to the list
        } 	
            else {
                List < Contact > lstcnts = new List < Contact > (); //Initialize list as no key is found before and first time we get key 
                lstcnts.add(c); 
                mapAccIdByCntlst.put(c.AccountId, lstcnts);
        }

	}//End  of For
        system.debug('Map looks as :'+mapAccIdByCntlst.values());
     /*   for(Contact c1:mapAccIdByCntlst.values()){
            
        }*/
       //  
    }
    
}