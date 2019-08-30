({
	doSubmit : function(comp, event, hlpr) {
        var attrval = comp.get("v.testattr");        //<!--Getting the value-->
		if(attrval=="false")
        {
            alert(attrval);
            comp.set("v.testattr","true");
           // comp.set("v.Reenter","false");
        }
        else
        {
            alert(attrval);
            comp.set("v.testattr","false");			//<!--Setting the value-->
        }
	},
    onClickCheckBox:function(component,event,helper){
        console.log("I am in controller");
    helper.checkBoxHelper(component,event);
}
})