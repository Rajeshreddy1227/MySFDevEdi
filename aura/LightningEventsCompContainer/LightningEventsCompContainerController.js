({
	handleTotalIncomeCompEventouter : function(component, event, helper) {
		alert("Handler in the outer component");
        var totalIncome = event.getParam('totalIncome');
        component.set('v.totalIncome',totalIncome);
	}
})