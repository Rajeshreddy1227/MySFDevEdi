({
	clickCreateItem : function(component, event, helper) {
		    var validItem = component.find('Itemform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        // If we pass error checking, do some real work
        if(validItem){
            // Create the new expense
            var newItem = component.get("v.newItem");
            console.log("Create expense: " + JSON.stringify(newItem));
            newItem.push(newItem);
			component.set("v.items", newItem);
            //helper.createExpense(component, newExpense);
        }
	}
})