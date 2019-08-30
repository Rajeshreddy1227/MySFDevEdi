public class MergeSortedListDemo {
    public static void demoMerge(list<integer> aList, list<integer> bList){
        integer aIndex = 0;
        integer bIndex = 0;
        list<integer> finalMergeList = new list<integer>();
        while(aIndex<aList.size()&&bIndex<bList.size()){
            if(aList[aIndex]<bList[bIndex]){
                finalMergeList.add(aList[aIndex]);
                aIndex++;
            }
            else{
                finalMergeList.add(bList[bIndex]);
                bIndex++;
            }
        }
        if(aIndex<aList.size()){
            for(integer i= aIndex;i<aList.size();i++){
                finalMergeList.add(aList[i]);                
            }
        }
        else{
            for(integer i= bIndex;i<bList.size();i++){
                finalMergeList.add(bList[i]);                
            }
        }
        system.debug('Final Merge List: '+finalMergeList);
    }

}

/*
List<Integer> aList = new List<Integer>{3, 6, 9, 12, 18};
List<Integer> bList = new List<Integer>{5, 8, 10, 11, 20};
  
MergeSortedListDemo.demoMerge(aList, bList);


*/