<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>SendOptyCloseAlert</fullName>
        <description>SendOptyCloseAlert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SendOptyCloseAlert</template>
    </alerts>
    <alerts>
        <fullName>SendOptyCloseAlert1</fullName>
        <description>SendOptyCloseAlert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SendOptyCloseAlert</template>
    </alerts>
    <fieldUpdates>
        <fullName>OptyNameUpdate1</fullName>
        <field>Name</field>
        <formula>Account.Name</formula>
        <name>OptyNameUpdate1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Opty Name Update</fullName>
        <actions>
            <name>OptyNameUpdate1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.CreatedDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
