({
	doSubmit : function(cmp, event, hlpr) {
		
        var abcval = cmp.get("v.abc");
        if(abcval == "true")
        {
            alert(abcval);
            cmp.set("v.abc","false")
        }
        else
        {
            alert(abcval);
            cmp.set("v.abc","true")
        }
	},
    
    
    onchangecheckbox: function(comp,evt,help){
        
      help.hlprcheckboxval(comp);
       //alert("Checked!");
    }
})