<aura:application >
	<H1>Displaying from Comp</H1>
    <!-- calling component-->
    <div>
        <c:Light_HelloWorld/><!--when there is no value defined comp value will be taken-->
        <c:Light_HelloWorld message = "test1"/><!--Passing Attribute value to component from Application, DYNAMIC values-->
        <c:Light_HelloWorld message = "test2"/>
        <c:Light_HelloWorld message = "test3"/>
        <c:Light_HelloWorld message = "test3"/>
	</div>        
</aura:application>