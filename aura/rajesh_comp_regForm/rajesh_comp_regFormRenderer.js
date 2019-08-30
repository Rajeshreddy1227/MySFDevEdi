({
	// Your renderer method overrides go here
    render: function(component,helper){
       var a = this.superRender();
        console.log("render");
        return a;
    },
    afterRender: function(component,helper){
        this.superAfterRender();
        console.log("afterRender");
    },
    rerender:function(component,helper){
        this.superRerender();
        console.log("rerender");
    },
    unrender:function(component,helper){
        this.superUnrender();
        console.log("Unrender");
    }
})