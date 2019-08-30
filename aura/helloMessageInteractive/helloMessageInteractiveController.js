({
	handleClick : function(component, event, helper) {
        var btnClicked = event.getSource();
        var btnMessage = btnClicked.get("v.label");
        console.log("btnMessage"+ btnMessage);
        component.set("v.message", btnMessage);
	},
    handleClick2: function(component, event, helper) {
        var newMessage = event.getSource().get("v.label");
        component.set("v.message", newMessage);
        console.log("handleClick2: Message: " + newMessage);
        component.set("v.message", newMessage);
    },
    handleClick3: function(component, event, helper) {
        component.set("v.message", event.getSource().get("v.label"));
    }
})