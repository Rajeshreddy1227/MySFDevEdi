({
	checkBoxHelper : function(cmp,evt) {
       var strvalhelper =  cmp.find("checkboxid").get("v.checked");
        console.log("I am in Helper:"+strvalhelper);
        cmp.set("v.checkedBox",strvalhelper);
	}
})