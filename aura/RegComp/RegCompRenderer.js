({
    render:function(comp,hlpr){
        var a = this.superRender();
        console.log("I am in render!");
        return a;
    },
    rerender:function(comp,hlpr){
        this.superRerender();
        console.log("I am in rerender!");
    },
    afterRender:function(comp,hlpr){
        this.superAfterRender();
    console.log("I am in afterRender!");
	},
    unrender:function(comp,hlpr){
        this.unrender();
        console.log("I am in unRender!");
    }
    
})