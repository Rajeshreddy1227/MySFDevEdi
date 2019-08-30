public class merge2 {
    public static void mergedemo(list<integer> aList,list<integer> bList){
        integer aIndex = 0;
        integer bIndex = 0;
        list<integer> finalMerge = new list<integer>();
        while(aIndex<aList.size()&&bIndex<bList.size()){
            if(aList[aIndex]<bList[bIndex]){
                finalMerge.add(aList[aIndex]);
                aIndex++;
            }
            else{
               finalMerge.add(bList[bIndex]) ;
                bIndex++;
            }
        }
        if(aIndex<aList.size()){
           for(integer i=aIndex;i<aList.size();i++){
               finalMerge.add(aList[i]);               
        	}	 
        }
        else{
            for(integer i=bIndex;i<bList.size();i++){
               finalMerge.add(bList[i]);               
        	}	 
        }
        
        system.debug('FinalMergeList:'+finalMerge);
    }

}