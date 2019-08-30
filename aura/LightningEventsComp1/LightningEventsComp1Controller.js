({
	doInit : function(component, event, helper){        
        component.set('v.myColumns', [
            {label: 'SNo', fieldName:'sno', type:'number'},
            {label: 'Income Source', fieldName: 'source',  type: 'text'},
            {label: 'Amount', fieldName: 'amount', type: 'number'}
        ]);
        component.set('v.incomes',[
            {
                sno: 1,
                source: 'Job Income',
                amount: 12000
            },
             {
                sno: 2,
                source: 'part time Income',
                amount: 5000
            }
        ]);
	},
    
    handleRegesteredComponentEvent:function(component, event, helper){
        alert('I am fired from handleRegesteredComponentEvent');
        //event.stopPropagation();// Stops porpogation of the event in bubble phase.
    },
    
    toggleIncomeForm:function(component, event, helper){
      
        var incomeform = component.find('IncomeForm');
        $A.util.toggleClass(incomeform, 'hide');
    },
    
    fireTotalIncomeComponentEvent:function(component, event, helper){
        var incomes = component.get('v.incomes');
        var totalIncome = 0;
        for(var i=0;i<incomes.length;i++){
            totalIncome+=incomes[i].amount;}
            var totalIncomeComponentEvent = component.getEvent('TotalIncomeCompEvent');
        totalIncomeComponentEvent.setParams({
            totalIncome : totalIncome
        });
        totalIncomeComponentEvent.fire();
    },
    
    addIncome:function(component, event, helper){
        var incomes = component.get('v.incomes');
        var newIncome = {
            sno:incomes.length+1,
            source: component.find('source').get('v.value'),
            amount: parseFloat(component.find('amount').get('v.value'))
        }
        if(newIncome.source!=null && newIncome.source!=''&&newIncome.amount!=null && newIncome.amount!=''){
            incomes.push(newIncome);
            component.set('v.incomes',incomes);
            component.find('source').set('v.value','');
            component.find('amount').set('v.value','');
        }
    }

})