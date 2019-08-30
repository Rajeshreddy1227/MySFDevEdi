({
	hlprcheckboxval : function(c) {
		//console.log("Hello");
		var cbvalue = c.find("checkbox2").get("v.checked");
        c.set("v.checkboxval",cbvalue);
        //alert(cbvalue);
	}
})