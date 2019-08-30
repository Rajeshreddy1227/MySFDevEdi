({
	click : function(component, event, helper) {
        var x = component.get("v.test");      
		alert("Iam in click method" + x);
	},
    tap : function(component, event, helper) {
          helper.helperDemo(component, event, helper);
	},
    fetchAccount : function(component, event, helper) {
		helper.fetchAcctHelper(component, event, helper);
	}
})