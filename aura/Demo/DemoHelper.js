({
	helperDemo : function(component,event,helper) {
		component.set("v.test","DemoSetParam");
		alert("Iam in Tap method");
	},
    fetchAcctHelper : function(component, event, helper) {
		component.set('v.myColumns', [
            {label: 'Account Name', fieldName: 'Name', type: 'text'},
            {label: 'Industry', fieldName: 'Industry', type: 'text'},
            {label: 'Phone', fieldName: 'Phone', type: 'Phone'},
            {label: 'Website', fieldName: 'Website', type: 'url'}
        ]);
        var action = component.get("c.fetchAccountAPEXController");
        action.setParams({
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.acctList", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})