({
	openorcloseregistrationform : function(component, event, helper) {
        var a = event.getSource().get("v.label");
		if( a== "Open Registration Form")
        {
            component.set("v.OpenRegistrationForm",true);
             component.set("v.ButtonLabel","Closetheform");
        }
        if(a == "Closetheform")
        {
            component.set("v.OpenRegistrationForm",false);
             component.set("v.ButtonLabel","Open Registration Form");
        }
	}
})