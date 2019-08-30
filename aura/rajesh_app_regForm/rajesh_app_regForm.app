<aura:application extends= "force:slds">
    
    <aura:attribute name ="OpenRegistrationForm" type="boolean" default="false"/>
    <aura:attribute name = "ButtonLabel" type="string" default="Open Registration Form"/>
    <lightning:button label = "{!v.ButtonLabel}" onclick="{!c.openorcloseregistrationform}"></lightning:button>
    <aura:if isTrue="{!v.OpenRegistrationForm}">
        <c:rajesh_comp_regForm />
    </aura:if>
    
</aura:application>